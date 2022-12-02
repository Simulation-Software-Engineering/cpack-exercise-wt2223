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
    
# This is some strange Docker problem. Normally, you don't need to add /usr/local to these
ENV LIBRARY_PATH $LIBRARY_PATH:/usr/local/lib/
ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:/usr/local/lib/
ENV PATH $PATH:/usr/local/bin/


# build and install the cmake exercise
RUN cd /software && \
    git clone https://github.com/LitschiW/cpack-exercise-wt2223.git && \
    cd cpack-exercise-wt2223 && mkdir build && cd build && \
    cmake .. && make -j4 package

RUN echo "cd /software/cpack-exercise-wt2223/build && ls -lv && cp *.deb *.tar.gz -t /mnt/cpack-exercise/" > /usr/local/bin/copyout && \
    chmod +x /usr/local/bin/copyout

ENTRYPOINT ["/bin/bash", "/usr/local/bin/copyout"]



