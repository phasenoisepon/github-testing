FROM gcc:latest AS builder
RUN pwd
RUN g++ hello.cpp -O a.out


FROM alpine:latest  
COPY --from=builder /root/a.out a.out
CMD ["./a.out"]  