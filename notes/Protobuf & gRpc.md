1.  protobuf is the serialization / deserialization lib; while grpc handles service / procedure definitions

2.  when use them, you have to install protoc and a protoc grpc plugin, so that from the *.proto file, we can generate two *.go files, the first of which contains serialization / deserialization of messages (structs) and the other define service / interfaces and their hook with real implementations

3. in *.proto file, you can specify a package name (similar to java package) to indicate the package of the current file; and this package might be used the compiler to decide the generated code structure, e.g java package, go package path etc

4. in *.proto, one can specify params for generated code, e.g option java_*, option go_*, etc

5. one can custom options https://developers.google.com/protocol-buffers/docs/proto, and those should be enclosed by () when used

6. 
