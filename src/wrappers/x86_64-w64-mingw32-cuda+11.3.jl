# Autogenerated wrapper script for ONNXRuntime_CUDA_jll for x86_64-w64-mingw32-cuda+11.3
export libonnxruntime, libonnxruntime_providers_cuda, libonnxruntime_providers_shared, libonnxruntime_providers_tensorrt

using CUDNN_jll
using TensorRT_jll
using Zlib_jll
using CUDA_Runtime_jll
JLLWrappers.@generate_wrapper_header("ONNXRuntime_CUDA")
JLLWrappers.@declare_library_product(libonnxruntime, "onnxruntime.dll")
JLLWrappers.@declare_library_product(libonnxruntime_providers_cuda, "onnxruntime_providers_cuda.dll")
JLLWrappers.@declare_library_product(libonnxruntime_providers_shared, "onnxruntime_providers_shared.dll")
JLLWrappers.@declare_library_product(libonnxruntime_providers_tensorrt, "onnxruntime_providers_tensorrt.dll")
function __init__()
    JLLWrappers.@generate_init_header(CUDNN_jll, TensorRT_jll, Zlib_jll, CUDA_Runtime_jll)
    JLLWrappers.@init_library_product(
        libonnxruntime,
        "bin\\onnxruntime.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libonnxruntime_providers_cuda,
        "bin\\onnxruntime_providers_cuda.dll",
        nothing,
    )

    JLLWrappers.@init_library_product(
        libonnxruntime_providers_shared,
        "bin\\onnxruntime_providers_shared.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libonnxruntime_providers_tensorrt,
        "bin\\onnxruntime_providers_tensorrt.dll",
        nothing,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
