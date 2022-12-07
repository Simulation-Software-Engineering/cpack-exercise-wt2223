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
        lintian \
        libyaml-cpp-dev
        
# Get, unpack, build, and install yaml-cpp        
RUN mkdir software && cd software && \
    git clone https://github.com/jbeder/yaml-cpp.git && \
    cd yaml-cpp && mkdir build && cd build && \
    cmake -DYAML_BUILD_SHARED_LIBS=ON .. && make -j4 && make install
    
# This is some strange Docker problem. Normally, you don't need to add /usr/local to these
ENV LIBRARY_PATH $LIBRARY_PATH:/usr/local/lib/
ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:/usr/local/lib/
ENV PATH $PATH:/usr/local/bin/

# Initial interactive container:
# CMD ["/bin/bash"]
# (BONUS) Package creation automatization:
CMD mkdir build && cd build && cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_BUILD_TYPE=Release ../mnt/cpack-exercise && make package && mv -t ../mnt/cpack-exercise cpackexample_0.1.0_amd64.deb cpackexample-0.1.0-Linux.tar.gz && /bin/bash