From ubuntu:22.04

COPY inittimezone /usr/local/bin/inittimezone

# Run inittimezone and install a few dependencies
RUN apt-get -qq update && \
    inittimezone && \
    apt-get -qq -y install \
        build-essential \
        cmake \
        g++ \
        git \
        libboost-all-dev \
        wget \
        libdeal.ii-dev \
        vim \
        tree \
        lintian

# Get, unpack, build, and install yaml-cpp
RUN mkdir software && cd software && \
    git clone https://github.com/jbeder/yaml-cpp.git && \
    cd yaml-cpp && mkdir build && cd build && \
    cmake -DYAML_BUILD_SHARED_LIBS=ON .. && make -j4 && make install

# This is some strange Docker problem.
# Normally, you don't need to add /usr/local to these
ENV LIBRARY_PATH $LIBRARY_PATH:/usr/local/lib/
ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:/usr/local/lib/
ENV PATH $PATH:/usr/local/bin/


# (Optional Task) Create DEB package and copy it to host
RUN mkdir -p cpackexercise/build

ADD . ./cpackexercise
WORKDIR ./cpackexercise/build

RUN echo '#########################\n CMake go brrr \n#########################'
RUN cmake -DBUILD_SHARED_LIBS=ON \
          -DCMAKE_BUILD_TYPE=Release ..
RUN make clean && make install && make package

# For testing:
RUN cpackexample; which cpackexample
RUN rm /usr/local/bin/cpackexample
RUN apt install -y ./cpackexample_*.*.*_amd64.deb \
      && echo "Installation Successful"
RUN dpkg-deb -f cpackexample_*.*.*_amd64.deb Depends
RUN cpackexample; which cpackexample

# (Optional) Run lintian
RUN lintian cpackexample_*

CMD ["/bin/bash"]
