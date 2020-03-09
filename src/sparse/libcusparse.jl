# Julia wrapper for header: cusparse.h
# Automatically generated using Clang.jl


@checked function cusparseCreate(handle)
    initialize_api()
    @runtime_ccall((:cusparseCreate, libcusparse()), cusparseStatus_t,
                   (Ptr{cusparseHandle_t},),
                   handle)
end

@checked function cusparseDestroy(handle)
    initialize_api()
    @runtime_ccall((:cusparseDestroy, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t,),
                   handle)
end

@checked function cusparseGetVersion(handle, version)
    @runtime_ccall((:cusparseGetVersion, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Ptr{Cint}),
                   handle, version)
end

@checked function cusparseGetProperty(type, value)
    @runtime_ccall((:cusparseGetProperty, libcusparse()), cusparseStatus_t,
                   (libraryPropertyType, Ptr{Cint}),
                   type, value)
end

function cusparseGetErrorName(status)
    @runtime_ccall((:cusparseGetErrorName, libcusparse()), Cstring,
                   (cusparseStatus_t,),
                   status)
end

function cusparseGetErrorString(status)
    @runtime_ccall((:cusparseGetErrorString, libcusparse()), Cstring,
                   (cusparseStatus_t,),
                   status)
end

@checked function cusparseSetStream(handle, streamId)
    initialize_api()
    @runtime_ccall((:cusparseSetStream, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, CUstream),
                   handle, streamId)
end

@checked function cusparseGetStream(handle, streamId)
    initialize_api()
    @runtime_ccall((:cusparseGetStream, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Ptr{CUstream}),
                   handle, streamId)
end

@checked function cusparseGetPointerMode(handle, mode)
    initialize_api()
    @runtime_ccall((:cusparseGetPointerMode, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Ptr{cusparsePointerMode_t}),
                   handle, mode)
end

@checked function cusparseSetPointerMode(handle, mode)
    initialize_api()
    @runtime_ccall((:cusparseSetPointerMode, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparsePointerMode_t),
                   handle, mode)
end

@checked function cusparseCreateMatDescr(descrA)
    initialize_api()
    @runtime_ccall((:cusparseCreateMatDescr, libcusparse()), cusparseStatus_t,
                   (Ptr{cusparseMatDescr_t},),
                   descrA)
end

@checked function cusparseDestroyMatDescr(descrA)
    initialize_api()
    @runtime_ccall((:cusparseDestroyMatDescr, libcusparse()), cusparseStatus_t,
                   (cusparseMatDescr_t,),
                   descrA)
end

@checked function cusparseCopyMatDescr(dest, src)
    initialize_api()
    @runtime_ccall((:cusparseCopyMatDescr, libcusparse()), cusparseStatus_t,
                   (cusparseMatDescr_t, cusparseMatDescr_t),
                   dest, src)
end

@checked function cusparseSetMatType(descrA, type)
    initialize_api()
    @runtime_ccall((:cusparseSetMatType, libcusparse()), cusparseStatus_t,
                   (cusparseMatDescr_t, cusparseMatrixType_t),
                   descrA, type)
end

function cusparseGetMatType(descrA)
    initialize_api()
    @runtime_ccall((:cusparseGetMatType, libcusparse()), cusparseMatrixType_t,
                   (cusparseMatDescr_t,),
                   descrA)
end

@checked function cusparseSetMatFillMode(descrA, fillMode)
    initialize_api()
    @runtime_ccall((:cusparseSetMatFillMode, libcusparse()), cusparseStatus_t,
                   (cusparseMatDescr_t, cusparseFillMode_t),
                   descrA, fillMode)
end

function cusparseGetMatFillMode(descrA)
    initialize_api()
    @runtime_ccall((:cusparseGetMatFillMode, libcusparse()), cusparseFillMode_t,
                   (cusparseMatDescr_t,),
                   descrA)
end

@checked function cusparseSetMatDiagType(descrA, diagType)
    initialize_api()
    @runtime_ccall((:cusparseSetMatDiagType, libcusparse()), cusparseStatus_t,
                   (cusparseMatDescr_t, cusparseDiagType_t),
                   descrA, diagType)
end

function cusparseGetMatDiagType(descrA)
    initialize_api()
    @runtime_ccall((:cusparseGetMatDiagType, libcusparse()), cusparseDiagType_t,
                   (cusparseMatDescr_t,),
                   descrA)
end

@checked function cusparseSetMatIndexBase(descrA, base)
    initialize_api()
    @runtime_ccall((:cusparseSetMatIndexBase, libcusparse()), cusparseStatus_t,
                   (cusparseMatDescr_t, cusparseIndexBase_t),
                   descrA, base)
end

function cusparseGetMatIndexBase(descrA)
    initialize_api()
    @runtime_ccall((:cusparseGetMatIndexBase, libcusparse()), cusparseIndexBase_t,
                   (cusparseMatDescr_t,),
                   descrA)
end

@checked function cusparseCreateSolveAnalysisInfo(info)
    initialize_api()
    @runtime_ccall((:cusparseCreateSolveAnalysisInfo, libcusparse()), cusparseStatus_t,
                   (Ptr{cusparseSolveAnalysisInfo_t},),
                   info)
end

@checked function cusparseDestroySolveAnalysisInfo(info)
    initialize_api()
    @runtime_ccall((:cusparseDestroySolveAnalysisInfo, libcusparse()), cusparseStatus_t,
                   (cusparseSolveAnalysisInfo_t,),
                   info)
end

@checked function cusparseGetLevelInfo(handle, info, nlevels, levelPtr, levelInd)
    initialize_api()
    @runtime_ccall((:cusparseGetLevelInfo, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseSolveAnalysisInfo_t, Ptr{Cint},
                    Ptr{Ptr{Cint}}, Ptr{Ptr{Cint}}),
                   handle, info, nlevels, levelPtr, levelInd)
end

@checked function cusparseCreateCsrsv2Info(info)
    initialize_api()
    @runtime_ccall((:cusparseCreateCsrsv2Info, libcusparse()), cusparseStatus_t,
                   (Ptr{csrsv2Info_t},),
                   info)
end

@checked function cusparseDestroyCsrsv2Info(info)
    initialize_api()
    @runtime_ccall((:cusparseDestroyCsrsv2Info, libcusparse()), cusparseStatus_t,
                   (csrsv2Info_t,),
                   info)
end

@checked function cusparseCreateCsric02Info(info)
    initialize_api()
    @runtime_ccall((:cusparseCreateCsric02Info, libcusparse()), cusparseStatus_t,
                   (Ptr{csric02Info_t},),
                   info)
end

@checked function cusparseDestroyCsric02Info(info)
    initialize_api()
    @runtime_ccall((:cusparseDestroyCsric02Info, libcusparse()), cusparseStatus_t,
                   (csric02Info_t,),
                   info)
end

@checked function cusparseCreateBsric02Info(info)
    initialize_api()
    @runtime_ccall((:cusparseCreateBsric02Info, libcusparse()), cusparseStatus_t,
                   (Ptr{bsric02Info_t},),
                   info)
end

@checked function cusparseDestroyBsric02Info(info)
    initialize_api()
    @runtime_ccall((:cusparseDestroyBsric02Info, libcusparse()), cusparseStatus_t,
                   (bsric02Info_t,),
                   info)
end

@checked function cusparseCreateCsrilu02Info(info)
    initialize_api()
    @runtime_ccall((:cusparseCreateCsrilu02Info, libcusparse()), cusparseStatus_t,
                   (Ptr{csrilu02Info_t},),
                   info)
end

@checked function cusparseDestroyCsrilu02Info(info)
    initialize_api()
    @runtime_ccall((:cusparseDestroyCsrilu02Info, libcusparse()), cusparseStatus_t,
                   (csrilu02Info_t,),
                   info)
end

@checked function cusparseCreateBsrilu02Info(info)
    initialize_api()
    @runtime_ccall((:cusparseCreateBsrilu02Info, libcusparse()), cusparseStatus_t,
                   (Ptr{bsrilu02Info_t},),
                   info)
end

@checked function cusparseDestroyBsrilu02Info(info)
    initialize_api()
    @runtime_ccall((:cusparseDestroyBsrilu02Info, libcusparse()), cusparseStatus_t,
                   (bsrilu02Info_t,),
                   info)
end

@checked function cusparseCreateBsrsv2Info(info)
    initialize_api()
    @runtime_ccall((:cusparseCreateBsrsv2Info, libcusparse()), cusparseStatus_t,
                   (Ptr{bsrsv2Info_t},),
                   info)
end

@checked function cusparseDestroyBsrsv2Info(info)
    initialize_api()
    @runtime_ccall((:cusparseDestroyBsrsv2Info, libcusparse()), cusparseStatus_t,
                   (bsrsv2Info_t,),
                   info)
end

@checked function cusparseCreateBsrsm2Info(info)
    initialize_api()
    @runtime_ccall((:cusparseCreateBsrsm2Info, libcusparse()), cusparseStatus_t,
                   (Ptr{bsrsm2Info_t},),
                   info)
end

@checked function cusparseDestroyBsrsm2Info(info)
    initialize_api()
    @runtime_ccall((:cusparseDestroyBsrsm2Info, libcusparse()), cusparseStatus_t,
                   (bsrsm2Info_t,),
                   info)
end

@checked function cusparseCreateHybMat(hybA)
    initialize_api()
    @runtime_ccall((:cusparseCreateHybMat, libcusparse()), cusparseStatus_t,
                   (Ptr{cusparseHybMat_t},),
                   hybA)
end

@checked function cusparseDestroyHybMat(hybA)
    initialize_api()
    @runtime_ccall((:cusparseDestroyHybMat, libcusparse()), cusparseStatus_t,
                   (cusparseHybMat_t,),
                   hybA)
end

@checked function cusparseCreateCsru2csrInfo(info)
    initialize_api()
    @runtime_ccall((:cusparseCreateCsru2csrInfo, libcusparse()), cusparseStatus_t,
                   (Ptr{csru2csrInfo_t},),
                   info)
end

@checked function cusparseDestroyCsru2csrInfo(info)
    initialize_api()
    @runtime_ccall((:cusparseDestroyCsru2csrInfo, libcusparse()), cusparseStatus_t,
                   (csru2csrInfo_t,),
                   info)
end

@checked function cusparseCreateColorInfo(info)
    initialize_api()
    @runtime_ccall((:cusparseCreateColorInfo, libcusparse()), cusparseStatus_t,
                   (Ptr{cusparseColorInfo_t},),
                   info)
end

@checked function cusparseDestroyColorInfo(info)
    initialize_api()
    @runtime_ccall((:cusparseDestroyColorInfo, libcusparse()), cusparseStatus_t,
                   (cusparseColorInfo_t,),
                   info)
end

@checked function cusparseSetColorAlgs(info, alg)
    initialize_api()
    @runtime_ccall((:cusparseSetColorAlgs, libcusparse()), cusparseStatus_t,
                   (cusparseColorInfo_t, cusparseColorAlg_t),
                   info, alg)
end

@checked function cusparseGetColorAlgs(info, alg)
    initialize_api()
    @runtime_ccall((:cusparseGetColorAlgs, libcusparse()), cusparseStatus_t,
                   (cusparseColorInfo_t, Ptr{cusparseColorAlg_t}),
                   info, alg)
end

@checked function cusparseCreatePruneInfo(info)
    initialize_api()
    @runtime_ccall((:cusparseCreatePruneInfo, libcusparse()), cusparseStatus_t,
                   (Ptr{pruneInfo_t},),
                   info)
end

@checked function cusparseDestroyPruneInfo(info)
    initialize_api()
    @runtime_ccall((:cusparseDestroyPruneInfo, libcusparse()), cusparseStatus_t,
                   (pruneInfo_t,),
                   info)
end

@checked function cusparseSaxpyi(handle, nnz, alpha, xVal, xInd, y, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseSaxpyi, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Ptr{Cfloat}, CuPtr{Cfloat}, CuPtr{Cint},
                    CuPtr{Cfloat}, cusparseIndexBase_t),
                   handle, nnz, alpha, xVal, xInd, y, idxBase)
end

@checked function cusparseDaxpyi(handle, nnz, alpha, xVal, xInd, y, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseDaxpyi, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Ptr{Cdouble}, CuPtr{Cdouble}, CuPtr{Cint},
                    CuPtr{Cdouble}, cusparseIndexBase_t),
                   handle, nnz, alpha, xVal, xInd, y, idxBase)
end

@checked function cusparseCaxpyi(handle, nnz, alpha, xVal, xInd, y, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseCaxpyi, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Ptr{cuComplex}, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{cuComplex}, cusparseIndexBase_t),
                   handle, nnz, alpha, xVal, xInd, y, idxBase)
end

@checked function cusparseZaxpyi(handle, nnz, alpha, xVal, xInd, y, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseZaxpyi, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Ptr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{cuDoubleComplex}, cusparseIndexBase_t),
                   handle, nnz, alpha, xVal, xInd, y, idxBase)
end

@checked function cusparseSdoti(handle, nnz, xVal, xInd, y, resultDevHostPtr, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseSdoti, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cfloat},
                    PtrOrCuPtr{Cfloat}, cusparseIndexBase_t),
                   handle, nnz, xVal, xInd, y, resultDevHostPtr, idxBase)
end

@checked function cusparseDdoti(handle, nnz, xVal, xInd, y, resultDevHostPtr, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseDdoti, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cdouble},
                    PtrOrCuPtr{Cdouble}, cusparseIndexBase_t),
                   handle, nnz, xVal, xInd, y, resultDevHostPtr, idxBase)
end

@checked function cusparseCdoti(handle, nnz, xVal, xInd, y, resultDevHostPtr, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseCdoti, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{cuComplex}, PtrOrCuPtr{cuComplex}, cusparseIndexBase_t),
                   handle, nnz, xVal, xInd, y, resultDevHostPtr, idxBase)
end

@checked function cusparseZdoti(handle, nnz, xVal, xInd, y, resultDevHostPtr, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseZdoti, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuDoubleComplex}, CuPtr{Cint},
                    CuPtr{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex},
                    cusparseIndexBase_t),
                   handle, nnz, xVal, xInd, y, resultDevHostPtr, idxBase)
end

@checked function cusparseCdotci(handle, nnz, xVal, xInd, y, resultDevHostPtr, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseCdotci, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{cuComplex}, PtrOrCuPtr{cuComplex}, cusparseIndexBase_t),
                   handle, nnz, xVal, xInd, y, resultDevHostPtr, idxBase)
end

@checked function cusparseZdotci(handle, nnz, xVal, xInd, y, resultDevHostPtr, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseZdotci, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuDoubleComplex}, CuPtr{Cint},
                    CuPtr{cuDoubleComplex}, PtrOrCuPtr{cuDoubleComplex},
                    cusparseIndexBase_t),
                   handle, nnz, xVal, xInd, y, resultDevHostPtr, idxBase)
end

@checked function cusparseSgthr(handle, nnz, y, xVal, xInd, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseSgthr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cfloat}, CuPtr{Cfloat}, CuPtr{Cint},
                    cusparseIndexBase_t),
                   handle, nnz, y, xVal, xInd, idxBase)
end

@checked function cusparseDgthr(handle, nnz, y, xVal, xInd, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseDgthr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cdouble}, CuPtr{Cdouble}, CuPtr{Cint},
                    cusparseIndexBase_t),
                   handle, nnz, y, xVal, xInd, idxBase)
end

@checked function cusparseCgthr(handle, nnz, y, xVal, xInd, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseCgthr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{Cint}, cusparseIndexBase_t),
                   handle, nnz, y, xVal, xInd, idxBase)
end

@checked function cusparseZgthr(handle, nnz, y, xVal, xInd, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseZgthr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, cusparseIndexBase_t),
                   handle, nnz, y, xVal, xInd, idxBase)
end

@checked function cusparseSgthrz(handle, nnz, y, xVal, xInd, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseSgthrz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cfloat}, CuPtr{Cfloat}, CuPtr{Cint},
                    cusparseIndexBase_t),
                   handle, nnz, y, xVal, xInd, idxBase)
end

@checked function cusparseDgthrz(handle, nnz, y, xVal, xInd, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseDgthrz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cdouble}, CuPtr{Cdouble}, CuPtr{Cint},
                    cusparseIndexBase_t),
                   handle, nnz, y, xVal, xInd, idxBase)
end

@checked function cusparseCgthrz(handle, nnz, y, xVal, xInd, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseCgthrz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{Cint}, cusparseIndexBase_t),
                   handle, nnz, y, xVal, xInd, idxBase)
end

@checked function cusparseZgthrz(handle, nnz, y, xVal, xInd, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseZgthrz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, cusparseIndexBase_t),
                   handle, nnz, y, xVal, xInd, idxBase)
end

@checked function cusparseSsctr(handle, nnz, xVal, xInd, y, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseSsctr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cfloat},
                    cusparseIndexBase_t),
                   handle, nnz, xVal, xInd, y, idxBase)
end

@checked function cusparseDsctr(handle, nnz, xVal, xInd, y, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseDsctr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cdouble},
                    cusparseIndexBase_t),
                   handle, nnz, xVal, xInd, y, idxBase)
end

@checked function cusparseCsctr(handle, nnz, xVal, xInd, y, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseCsctr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{cuComplex}, cusparseIndexBase_t),
                   handle, nnz, xVal, xInd, y, idxBase)
end

@checked function cusparseZsctr(handle, nnz, xVal, xInd, y, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseZsctr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuDoubleComplex}, CuPtr{Cint},
                    CuPtr{cuDoubleComplex}, cusparseIndexBase_t),
                   handle, nnz, xVal, xInd, y, idxBase)
end

@checked function cusparseSroti(handle, nnz, xVal, xInd, y, c, s, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseSroti, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cfloat},
                    Ptr{Cfloat}, Ptr{Cfloat}, cusparseIndexBase_t),
                   handle, nnz, xVal, xInd, y, c, s, idxBase)
end

@checked function cusparseDroti(handle, nnz, xVal, xInd, y, c, s, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseDroti, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cdouble},
                    Ptr{Cdouble}, Ptr{Cdouble}, cusparseIndexBase_t),
                   handle, nnz, xVal, xInd, y, c, s, idxBase)
end

@checked function cusparseSgemvi(handle, transA, m, n, alpha, A, lda, nnz, xVal, xInd,
                                 beta, y, idxBase, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSgemvi, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Ptr{Cfloat},
                    CuPtr{Cfloat}, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cint}, Ptr{Cfloat},
                    CuPtr{Cfloat}, cusparseIndexBase_t, CuPtr{Cvoid}),
                   handle, transA, m, n, alpha, A, lda, nnz, xVal, xInd, beta, y, idxBase,
                   pBuffer)
end

@checked function cusparseSgemvi_bufferSize(handle, transA, m, n, nnz, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseSgemvi_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint, Ptr{Cint}),
                   handle, transA, m, n, nnz, pBufferSize)
end

@checked function cusparseDgemvi(handle, transA, m, n, alpha, A, lda, nnz, xVal, xInd,
                                 beta, y, idxBase, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDgemvi, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Ptr{Cdouble},
                    CuPtr{Cdouble}, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cint}, Ptr{Cdouble},
                    CuPtr{Cdouble}, cusparseIndexBase_t, CuPtr{Cvoid}),
                   handle, transA, m, n, alpha, A, lda, nnz, xVal, xInd, beta, y, idxBase,
                   pBuffer)
end

@checked function cusparseDgemvi_bufferSize(handle, transA, m, n, nnz, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseDgemvi_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint, Ptr{Cint}),
                   handle, transA, m, n, nnz, pBufferSize)
end

@checked function cusparseCgemvi(handle, transA, m, n, alpha, A, lda, nnz, xVal, xInd,
                                 beta, y, idxBase, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCgemvi, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Ptr{cuComplex},
                    CuPtr{cuComplex}, Cint, Cint, CuPtr{cuComplex}, CuPtr{Cint},
                    Ptr{cuComplex}, CuPtr{cuComplex}, cusparseIndexBase_t, CuPtr{Cvoid}),
                   handle, transA, m, n, alpha, A, lda, nnz, xVal, xInd, beta, y, idxBase,
                   pBuffer)
end

@checked function cusparseCgemvi_bufferSize(handle, transA, m, n, nnz, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseCgemvi_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint, Ptr{Cint}),
                   handle, transA, m, n, nnz, pBufferSize)
end

@checked function cusparseZgemvi(handle, transA, m, n, alpha, A, lda, nnz, xVal, xInd,
                                 beta, y, idxBase, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZgemvi, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint,
                    Ptr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint, Cint,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, Ptr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, cusparseIndexBase_t, CuPtr{Cvoid}),
                   handle, transA, m, n, alpha, A, lda, nnz, xVal, xInd, beta, y, idxBase,
                   pBuffer)
end

@checked function cusparseZgemvi_bufferSize(handle, transA, m, n, nnz, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseZgemvi_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint, Ptr{Cint}),
                   handle, transA, m, n, nnz, pBufferSize)
end

@checked function cusparseScsrmv(handle, transA, m, n, nnz, alpha, descrA, csrSortedValA,
                                 csrSortedRowPtrA, csrSortedColIndA, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseScsrmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint, Ptr{Cfloat},
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{Cfloat}, Ptr{Cfloat}, CuPtr{Cfloat}),
                   handle, transA, m, n, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, x, beta, y)
end

@checked function cusparseDcsrmv(handle, transA, m, n, nnz, alpha, descrA, csrSortedValA,
                                 csrSortedRowPtrA, csrSortedColIndA, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseDcsrmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint, Ptr{Cdouble},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{Cdouble}, Ptr{Cdouble}, CuPtr{Cdouble}),
                   handle, transA, m, n, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, x, beta, y)
end

@checked function cusparseCcsrmv(handle, transA, m, n, nnz, alpha, descrA, csrSortedValA,
                                 csrSortedRowPtrA, csrSortedColIndA, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseCcsrmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint,
                    Ptr{cuComplex}, cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{cuComplex}, Ptr{cuComplex}, CuPtr{cuComplex}),
                   handle, transA, m, n, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, x, beta, y)
end

@checked function cusparseZcsrmv(handle, transA, m, n, nnz, alpha, descrA, csrSortedValA,
                                 csrSortedRowPtrA, csrSortedColIndA, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseZcsrmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint,
                    Ptr{cuDoubleComplex}, cusparseMatDescr_t, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{cuDoubleComplex}, Ptr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}),
                   handle, transA, m, n, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, x, beta, y)
end

@checked function cusparseCsrmvEx_bufferSize(handle, alg, transA, m, n, nnz, alpha,
                                             alphatype, descrA, csrValA, csrValAtype,
                                             csrRowPtrA, csrColIndA, x, xtype, beta,
                                             betatype, y, ytype, executiontype,
                                             bufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCsrmvEx_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseAlgMode_t, cusparseOperation_t, Cint, Cint,
                    Cint, Ptr{Cvoid}, cudaDataType, cusparseMatDescr_t, CuPtr{Cvoid},
                    cudaDataType, CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cvoid}, cudaDataType,
                    Ptr{Cvoid}, cudaDataType, CuPtr{Cvoid}, cudaDataType, cudaDataType,
                    Ptr{Csize_t}),
                   handle, alg, transA, m, n, nnz, alpha, alphatype, descrA, csrValA,
                   csrValAtype, csrRowPtrA, csrColIndA, x, xtype, beta, betatype, y, ytype,
                   executiontype, bufferSizeInBytes)
end

@checked function cusparseCsrmvEx(handle, alg, transA, m, n, nnz, alpha, alphatype, descrA,
                                  csrValA, csrValAtype, csrRowPtrA, csrColIndA, x, xtype,
                                  beta, betatype, y, ytype, executiontype, buffer)
    initialize_api()
    @runtime_ccall((:cusparseCsrmvEx, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseAlgMode_t, cusparseOperation_t, Cint, Cint,
                    Cint, Ptr{Cvoid}, cudaDataType, cusparseMatDescr_t, CuPtr{Cvoid},
                    cudaDataType, CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cvoid}, cudaDataType,
                    Ptr{Cvoid}, cudaDataType, CuPtr{Cvoid}, cudaDataType, cudaDataType,
                    CuPtr{Cvoid}),
                   handle, alg, transA, m, n, nnz, alpha, alphatype, descrA, csrValA,
                   csrValAtype, csrRowPtrA, csrColIndA, x, xtype, beta, betatype, y, ytype,
                   executiontype, buffer)
end

@checked function cusparseScsrmv_mp(handle, transA, m, n, nnz, alpha, descrA,
                                    csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, x,
                                    beta, y)
    initialize_api()
    @runtime_ccall((:cusparseScsrmv_mp, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint, Ptr{Cfloat},
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{Cfloat}, Ptr{Cfloat}, CuPtr{Cfloat}),
                   handle, transA, m, n, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, x, beta, y)
end

@checked function cusparseDcsrmv_mp(handle, transA, m, n, nnz, alpha, descrA,
                                    csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, x,
                                    beta, y)
    initialize_api()
    @runtime_ccall((:cusparseDcsrmv_mp, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint, Ptr{Cdouble},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{Cdouble}, Ptr{Cdouble}, CuPtr{Cdouble}),
                   handle, transA, m, n, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, x, beta, y)
end

@checked function cusparseCcsrmv_mp(handle, transA, m, n, nnz, alpha, descrA,
                                    csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, x,
                                    beta, y)
    initialize_api()
    @runtime_ccall((:cusparseCcsrmv_mp, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint,
                    Ptr{cuComplex}, cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{cuComplex}, Ptr{cuComplex}, CuPtr{cuComplex}),
                   handle, transA, m, n, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, x, beta, y)
end

@checked function cusparseZcsrmv_mp(handle, transA, m, n, nnz, alpha, descrA,
                                    csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, x,
                                    beta, y)
    initialize_api()
    @runtime_ccall((:cusparseZcsrmv_mp, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint,
                    Ptr{cuDoubleComplex}, cusparseMatDescr_t, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{cuDoubleComplex}, Ptr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}),
                   handle, transA, m, n, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, x, beta, y)
end

@checked function cusparseShybmv(handle, transA, alpha, descrA, hybA, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseShybmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Ptr{Cfloat},
                    cusparseMatDescr_t, cusparseHybMat_t, CuPtr{Cfloat}, Ptr{Cfloat},
                    CuPtr{Cfloat}),
                   handle, transA, alpha, descrA, hybA, x, beta, y)
end

@checked function cusparseDhybmv(handle, transA, alpha, descrA, hybA, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseDhybmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Ptr{Cdouble},
                    cusparseMatDescr_t, cusparseHybMat_t, CuPtr{Cdouble}, Ptr{Cdouble},
                    CuPtr{Cdouble}),
                   handle, transA, alpha, descrA, hybA, x, beta, y)
end

@checked function cusparseChybmv(handle, transA, alpha, descrA, hybA, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseChybmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Ptr{cuComplex},
                    cusparseMatDescr_t, cusparseHybMat_t, CuPtr{cuComplex}, Ptr{cuComplex},
                    CuPtr{cuComplex}),
                   handle, transA, alpha, descrA, hybA, x, beta, y)
end

@checked function cusparseZhybmv(handle, transA, alpha, descrA, hybA, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseZhybmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Ptr{cuDoubleComplex},
                    cusparseMatDescr_t, cusparseHybMat_t, CuPtr{cuDoubleComplex},
                    Ptr{cuDoubleComplex}, CuPtr{cuDoubleComplex}),
                   handle, transA, alpha, descrA, hybA, x, beta, y)
end

@checked function cusparseSbsrmv(handle, dirA, transA, mb, nb, nnzb, alpha, descrA,
                                 bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA,
                                 blockDim, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseSbsrmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, Cint, Ptr{Cfloat}, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, Cint, CuPtr{Cfloat}, Ptr{Cfloat},
                    CuPtr{Cfloat}),
                   handle, dirA, transA, mb, nb, nnzb, alpha, descrA, bsrSortedValA,
                   bsrSortedRowPtrA, bsrSortedColIndA, blockDim, x, beta, y)
end

@checked function cusparseDbsrmv(handle, dirA, transA, mb, nb, nnzb, alpha, descrA,
                                 bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA,
                                 blockDim, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseDbsrmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, Cint, Ptr{Cdouble}, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, Cint, CuPtr{Cdouble}, Ptr{Cdouble},
                    CuPtr{Cdouble}),
                   handle, dirA, transA, mb, nb, nnzb, alpha, descrA, bsrSortedValA,
                   bsrSortedRowPtrA, bsrSortedColIndA, blockDim, x, beta, y)
end

@checked function cusparseCbsrmv(handle, dirA, transA, mb, nb, nnzb, alpha, descrA,
                                 bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA,
                                 blockDim, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseCbsrmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, Cint, Ptr{cuComplex}, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, Cint, CuPtr{cuComplex}, Ptr{cuComplex},
                    CuPtr{cuComplex}),
                   handle, dirA, transA, mb, nb, nnzb, alpha, descrA, bsrSortedValA,
                   bsrSortedRowPtrA, bsrSortedColIndA, blockDim, x, beta, y)
end

@checked function cusparseZbsrmv(handle, dirA, transA, mb, nb, nnzb, alpha, descrA,
                                 bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA,
                                 blockDim, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseZbsrmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, Cint, Ptr{cuDoubleComplex}, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    CuPtr{cuDoubleComplex}, Ptr{cuDoubleComplex}, CuPtr{cuDoubleComplex}),
                   handle, dirA, transA, mb, nb, nnzb, alpha, descrA, bsrSortedValA,
                   bsrSortedRowPtrA, bsrSortedColIndA, blockDim, x, beta, y)
end

@checked function cusparseSbsrxmv(handle, dirA, transA, sizeOfMask, mb, nb, nnzb, alpha,
                                  descrA, bsrSortedValA, bsrSortedMaskPtrA,
                                  bsrSortedRowPtrA, bsrSortedEndPtrA, bsrSortedColIndA,
                                  blockDim, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseSbsrxmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, Cint, Cint, Ptr{Cfloat}, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    CuPtr{Cfloat}, Ptr{Cfloat}, CuPtr{Cfloat}),
                   handle, dirA, transA, sizeOfMask, mb, nb, nnzb, alpha, descrA,
                   bsrSortedValA, bsrSortedMaskPtrA, bsrSortedRowPtrA, bsrSortedEndPtrA,
                   bsrSortedColIndA, blockDim, x, beta, y)
end

@checked function cusparseDbsrxmv(handle, dirA, transA, sizeOfMask, mb, nb, nnzb, alpha,
                                  descrA, bsrSortedValA, bsrSortedMaskPtrA,
                                  bsrSortedRowPtrA, bsrSortedEndPtrA, bsrSortedColIndA,
                                  blockDim, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseDbsrxmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, Cint, Cint, Ptr{Cdouble}, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    CuPtr{Cdouble}, Ptr{Cdouble}, CuPtr{Cdouble}),
                   handle, dirA, transA, sizeOfMask, mb, nb, nnzb, alpha, descrA,
                   bsrSortedValA, bsrSortedMaskPtrA, bsrSortedRowPtrA, bsrSortedEndPtrA,
                   bsrSortedColIndA, blockDim, x, beta, y)
end

@checked function cusparseCbsrxmv(handle, dirA, transA, sizeOfMask, mb, nb, nnzb, alpha,
                                  descrA, bsrSortedValA, bsrSortedMaskPtrA,
                                  bsrSortedRowPtrA, bsrSortedEndPtrA, bsrSortedColIndA,
                                  blockDim, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseCbsrxmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, Cint, Cint, Ptr{cuComplex}, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    CuPtr{cuComplex}, Ptr{cuComplex}, CuPtr{cuComplex}),
                   handle, dirA, transA, sizeOfMask, mb, nb, nnzb, alpha, descrA,
                   bsrSortedValA, bsrSortedMaskPtrA, bsrSortedRowPtrA, bsrSortedEndPtrA,
                   bsrSortedColIndA, blockDim, x, beta, y)
end

@checked function cusparseZbsrxmv(handle, dirA, transA, sizeOfMask, mb, nb, nnzb, alpha,
                                  descrA, bsrSortedValA, bsrSortedMaskPtrA,
                                  bsrSortedRowPtrA, bsrSortedEndPtrA, bsrSortedColIndA,
                                  blockDim, x, beta, y)
    initialize_api()
    @runtime_ccall((:cusparseZbsrxmv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, Cint, Cint, Ptr{cuDoubleComplex}, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, CuPtr{cuDoubleComplex}, Ptr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}),
                   handle, dirA, transA, sizeOfMask, mb, nb, nnzb, alpha, descrA,
                   bsrSortedValA, bsrSortedMaskPtrA, bsrSortedRowPtrA, bsrSortedEndPtrA,
                   bsrSortedColIndA, blockDim, x, beta, y)
end

@checked function cusparseCsrsv_analysisEx(handle, transA, m, nnz, descrA, csrSortedValA,
                                           csrSortedValAtype, csrSortedRowPtrA,
                                           csrSortedColIndA, info, executiontype)
    initialize_api()
    @runtime_ccall((:cusparseCsrsv_analysisEx, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cvoid}, cudaDataType, CuPtr{Cint}, CuPtr{Cint},
                    cusparseSolveAnalysisInfo_t, cudaDataType),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedValAtype,
                   csrSortedRowPtrA, csrSortedColIndA, info, executiontype)
end

@checked function cusparseScsrsv_analysis(handle, transA, m, nnz, descrA, csrSortedValA,
                                          csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseScsrsv_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, cusparseSolveAnalysisInfo_t),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseDcsrsv_analysis(handle, transA, m, nnz, descrA, csrSortedValA,
                                          csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseDcsrsv_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, cusparseSolveAnalysisInfo_t),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseCcsrsv_analysis(handle, transA, m, nnz, descrA, csrSortedValA,
                                          csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseCcsrsv_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, cusparseSolveAnalysisInfo_t),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseZcsrsv_analysis(handle, transA, m, nnz, descrA, csrSortedValA,
                                          csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseZcsrsv_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseSolveAnalysisInfo_t),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseCsrsv_solveEx(handle, transA, m, alpha, alphatype, descrA,
                                        csrSortedValA, csrSortedValAtype, csrSortedRowPtrA,
                                        csrSortedColIndA, info, f, ftype, x, xtype,
                                        executiontype)
    initialize_api()
    @runtime_ccall((:cusparseCsrsv_solveEx, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Ptr{Cvoid}, cudaDataType,
                    cusparseMatDescr_t, CuPtr{Cvoid}, cudaDataType, CuPtr{Cint},
                    CuPtr{Cint}, cusparseSolveAnalysisInfo_t, CuPtr{Cvoid}, cudaDataType,
                    CuPtr{Cvoid}, cudaDataType, cudaDataType),
                   handle, transA, m, alpha, alphatype, descrA, csrSortedValA,
                   csrSortedValAtype, csrSortedRowPtrA, csrSortedColIndA, info, f, ftype,
                   x, xtype, executiontype)
end

@checked function cusparseScsrsv_solve(handle, transA, m, alpha, descrA, csrSortedValA,
                                       csrSortedRowPtrA, csrSortedColIndA, info, f, x)
    initialize_api()
    @runtime_ccall((:cusparseScsrsv_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Ptr{Cfloat},
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseSolveAnalysisInfo_t, CuPtr{Cfloat}, CuPtr{Cfloat}),
                   handle, transA, m, alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, f, x)
end

@checked function cusparseDcsrsv_solve(handle, transA, m, alpha, descrA, csrSortedValA,
                                       csrSortedRowPtrA, csrSortedColIndA, info, f, x)
    initialize_api()
    @runtime_ccall((:cusparseDcsrsv_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Ptr{Cdouble},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseSolveAnalysisInfo_t, CuPtr{Cdouble}, CuPtr{Cdouble}),
                   handle, transA, m, alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, f, x)
end

@checked function cusparseCcsrsv_solve(handle, transA, m, alpha, descrA, csrSortedValA,
                                       csrSortedRowPtrA, csrSortedColIndA, info, f, x)
    initialize_api()
    @runtime_ccall((:cusparseCcsrsv_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Ptr{cuComplex},
                    cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseSolveAnalysisInfo_t, CuPtr{cuComplex}, CuPtr{cuComplex}),
                   handle, transA, m, alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, f, x)
end

@checked function cusparseZcsrsv_solve(handle, transA, m, alpha, descrA, csrSortedValA,
                                       csrSortedRowPtrA, csrSortedColIndA, info, f, x)
    initialize_api()
    @runtime_ccall((:cusparseZcsrsv_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Ptr{cuDoubleComplex},
                    cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseSolveAnalysisInfo_t, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}),
                   handle, transA, m, alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, f, x)
end

@checked function cusparseXcsrsv2_zeroPivot(handle, info, position)
    initialize_api()
    @runtime_ccall((:cusparseXcsrsv2_zeroPivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, csrsv2Info_t, Ptr{Cint}),
                   handle, info, position)
end

@checked function cusparseScsrsv2_bufferSize(handle, transA, m, nnz, descrA, csrSortedValA,
                                             csrSortedRowPtrA, csrSortedColIndA, info,
                                             pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseScsrsv2_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, csrsv2Info_t, Ptr{Cint}),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSizeInBytes)
end

@checked function cusparseDcsrsv2_bufferSize(handle, transA, m, nnz, descrA, csrSortedValA,
                                             csrSortedRowPtrA, csrSortedColIndA, info,
                                             pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDcsrsv2_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, csrsv2Info_t, Ptr{Cint}),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSizeInBytes)
end

@checked function cusparseCcsrsv2_bufferSize(handle, transA, m, nnz, descrA, csrSortedValA,
                                             csrSortedRowPtrA, csrSortedColIndA, info,
                                             pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCcsrsv2_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, csrsv2Info_t, Ptr{Cint}),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSizeInBytes)
end

@checked function cusparseZcsrsv2_bufferSize(handle, transA, m, nnz, descrA, csrSortedValA,
                                             csrSortedRowPtrA, csrSortedColIndA, info,
                                             pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZcsrsv2_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, csrsv2Info_t,
                    Ptr{Cint}),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSizeInBytes)
end

@checked function cusparseScsrsv2_bufferSizeExt(handle, transA, m, nnz, descrA,
                                                csrSortedValA, csrSortedRowPtrA,
                                                csrSortedColIndA, info, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseScsrsv2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, csrsv2Info_t, Ptr{Csize_t}),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSize)
end

@checked function cusparseDcsrsv2_bufferSizeExt(handle, transA, m, nnz, descrA,
                                                csrSortedValA, csrSortedRowPtrA,
                                                csrSortedColIndA, info, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseDcsrsv2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, csrsv2Info_t, Ptr{Csize_t}),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSize)
end

@checked function cusparseCcsrsv2_bufferSizeExt(handle, transA, m, nnz, descrA,
                                                csrSortedValA, csrSortedRowPtrA,
                                                csrSortedColIndA, info, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseCcsrsv2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, csrsv2Info_t, Ptr{Csize_t}),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSize)
end

@checked function cusparseZcsrsv2_bufferSizeExt(handle, transA, m, nnz, descrA,
                                                csrSortedValA, csrSortedRowPtrA,
                                                csrSortedColIndA, info, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseZcsrsv2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, csrsv2Info_t,
                    Ptr{Csize_t}),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSize)
end

@checked function cusparseScsrsv2_analysis(handle, transA, m, nnz, descrA, csrSortedValA,
                                           csrSortedRowPtrA, csrSortedColIndA, info,
                                           policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseScsrsv2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, csrsv2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseDcsrsv2_analysis(handle, transA, m, nnz, descrA, csrSortedValA,
                                           csrSortedRowPtrA, csrSortedColIndA, info,
                                           policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDcsrsv2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, csrsv2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseCcsrsv2_analysis(handle, transA, m, nnz, descrA, csrSortedValA,
                                           csrSortedRowPtrA, csrSortedColIndA, info,
                                           policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCcsrsv2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, csrsv2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseZcsrsv2_analysis(handle, transA, m, nnz, descrA, csrSortedValA,
                                           csrSortedRowPtrA, csrSortedColIndA, info,
                                           policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZcsrsv2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, csrsv2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseScsrsv2_solve(handle, transA, m, nnz, alpha, descrA,
                                        csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                                        info, f, x, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseScsrsv2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Ptr{Cfloat},
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    csrsv2Info_t, CuPtr{Cfloat}, CuPtr{Cfloat}, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, transA, m, nnz, alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, f, x, policy, pBuffer)
end

@checked function cusparseDcsrsv2_solve(handle, transA, m, nnz, alpha, descrA,
                                        csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                                        info, f, x, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDcsrsv2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Ptr{Cdouble},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    csrsv2Info_t, CuPtr{Cdouble}, CuPtr{Cdouble}, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, transA, m, nnz, alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, f, x, policy, pBuffer)
end

@checked function cusparseCcsrsv2_solve(handle, transA, m, nnz, alpha, descrA,
                                        csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                                        info, f, x, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCcsrsv2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Ptr{cuComplex},
                    cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    csrsv2Info_t, CuPtr{cuComplex}, CuPtr{cuComplex},
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, transA, m, nnz, alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, f, x, policy, pBuffer)
end

@checked function cusparseZcsrsv2_solve(handle, transA, m, nnz, alpha, descrA,
                                        csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                                        info, f, x, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZcsrsv2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint,
                    Ptr{cuDoubleComplex}, cusparseMatDescr_t, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, csrsv2Info_t, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, transA, m, nnz, alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, f, x, policy, pBuffer)
end

@checked function cusparseXbsrsv2_zeroPivot(handle, info, position)
    initialize_api()
    @runtime_ccall((:cusparseXbsrsv2_zeroPivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, bsrsv2Info_t, Ptr{Cint}),
                   handle, info, position)
end

@checked function cusparseSbsrsv2_bufferSize(handle, dirA, transA, mb, nnzb, descrA,
                                             bsrSortedValA, bsrSortedRowPtrA,
                                             bsrSortedColIndA, blockDim, info,
                                             pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSbsrsv2_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, bsrsv2Info_t, Ptr{Cint}),
                   handle, dirA, transA, mb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockDim, info, pBufferSizeInBytes)
end

@checked function cusparseDbsrsv2_bufferSize(handle, dirA, transA, mb, nnzb, descrA,
                                             bsrSortedValA, bsrSortedRowPtrA,
                                             bsrSortedColIndA, blockDim, info,
                                             pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDbsrsv2_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, bsrsv2Info_t, Ptr{Cint}),
                   handle, dirA, transA, mb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockDim, info, pBufferSizeInBytes)
end

@checked function cusparseCbsrsv2_bufferSize(handle, dirA, transA, mb, nnzb, descrA,
                                             bsrSortedValA, bsrSortedRowPtrA,
                                             bsrSortedColIndA, blockDim, info,
                                             pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCbsrsv2_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, bsrsv2Info_t, Ptr{Cint}),
                   handle, dirA, transA, mb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockDim, info, pBufferSizeInBytes)
end

@checked function cusparseZbsrsv2_bufferSize(handle, dirA, transA, mb, nnzb, descrA,
                                             bsrSortedValA, bsrSortedRowPtrA,
                                             bsrSortedColIndA, blockDim, info,
                                             pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZbsrsv2_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, bsrsv2Info_t, Ptr{Cint}),
                   handle, dirA, transA, mb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockDim, info, pBufferSizeInBytes)
end

@checked function cusparseSbsrsv2_bufferSizeExt(handle, dirA, transA, mb, nnzb, descrA,
                                                bsrSortedValA, bsrSortedRowPtrA,
                                                bsrSortedColIndA, blockSize, info,
                                                pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseSbsrsv2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, bsrsv2Info_t, Ptr{Csize_t}),
                   handle, dirA, transA, mb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockSize, info, pBufferSize)
end

@checked function cusparseDbsrsv2_bufferSizeExt(handle, dirA, transA, mb, nnzb, descrA,
                                                bsrSortedValA, bsrSortedRowPtrA,
                                                bsrSortedColIndA, blockSize, info,
                                                pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseDbsrsv2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, bsrsv2Info_t, Ptr{Csize_t}),
                   handle, dirA, transA, mb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockSize, info, pBufferSize)
end

@checked function cusparseCbsrsv2_bufferSizeExt(handle, dirA, transA, mb, nnzb, descrA,
                                                bsrSortedValA, bsrSortedRowPtrA,
                                                bsrSortedColIndA, blockSize, info,
                                                pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseCbsrsv2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, bsrsv2Info_t, Ptr{Csize_t}),
                   handle, dirA, transA, mb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockSize, info, pBufferSize)
end

@checked function cusparseZbsrsv2_bufferSizeExt(handle, dirA, transA, mb, nnzb, descrA,
                                                bsrSortedValA, bsrSortedRowPtrA,
                                                bsrSortedColIndA, blockSize, info,
                                                pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseZbsrsv2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, bsrsv2Info_t, Ptr{Csize_t}),
                   handle, dirA, transA, mb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockSize, info, pBufferSize)
end

@checked function cusparseSbsrsv2_analysis(handle, dirA, transA, mb, nnzb, descrA,
                                           bsrSortedValA, bsrSortedRowPtrA,
                                           bsrSortedColIndA, blockDim, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSbsrsv2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, bsrsv2Info_t, cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, mb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockDim, info, policy, pBuffer)
end

@checked function cusparseDbsrsv2_analysis(handle, dirA, transA, mb, nnzb, descrA,
                                           bsrSortedValA, bsrSortedRowPtrA,
                                           bsrSortedColIndA, blockDim, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDbsrsv2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, bsrsv2Info_t, cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, mb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockDim, info, policy, pBuffer)
end

@checked function cusparseCbsrsv2_analysis(handle, dirA, transA, mb, nnzb, descrA,
                                           bsrSortedValA, bsrSortedRowPtrA,
                                           bsrSortedColIndA, blockDim, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCbsrsv2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, bsrsv2Info_t, cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, mb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockDim, info, policy, pBuffer)
end

@checked function cusparseZbsrsv2_analysis(handle, dirA, transA, mb, nnzb, descrA,
                                           bsrSortedValA, bsrSortedRowPtrA,
                                           bsrSortedColIndA, blockDim, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZbsrsv2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, bsrsv2Info_t, cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, mb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockDim, info, policy, pBuffer)
end

@checked function cusparseSbsrsv2_solve(handle, dirA, transA, mb, nnzb, alpha, descrA,
                                        bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA,
                                        blockDim, info, f, x, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSbsrsv2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, Ptr{Cfloat}, cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, bsrsv2Info_t, CuPtr{Cfloat}, CuPtr{Cfloat},
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, mb, nnzb, alpha, descrA, bsrSortedValA,
                   bsrSortedRowPtrA, bsrSortedColIndA, blockDim, info, f, x, policy,
                   pBuffer)
end

@checked function cusparseDbsrsv2_solve(handle, dirA, transA, mb, nnzb, alpha, descrA,
                                        bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA,
                                        blockDim, info, f, x, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDbsrsv2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, Ptr{Cdouble}, cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, bsrsv2Info_t, CuPtr{Cdouble}, CuPtr{Cdouble},
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, mb, nnzb, alpha, descrA, bsrSortedValA,
                   bsrSortedRowPtrA, bsrSortedColIndA, blockDim, info, f, x, policy,
                   pBuffer)
end

@checked function cusparseCbsrsv2_solve(handle, dirA, transA, mb, nnzb, alpha, descrA,
                                        bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA,
                                        blockDim, info, f, x, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCbsrsv2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, Ptr{cuComplex}, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsv2Info_t, CuPtr{cuComplex},
                    CuPtr{cuComplex}, cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, mb, nnzb, alpha, descrA, bsrSortedValA,
                   bsrSortedRowPtrA, bsrSortedColIndA, blockDim, info, f, x, policy,
                   pBuffer)
end

@checked function cusparseZbsrsv2_solve(handle, dirA, transA, mb, nnzb, alpha, descrA,
                                        bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA,
                                        blockDim, info, f, x, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZbsrsv2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t, Cint,
                    Cint, Ptr{cuDoubleComplex}, cusparseMatDescr_t, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsv2Info_t, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, mb, nnzb, alpha, descrA, bsrSortedValA,
                   bsrSortedRowPtrA, bsrSortedColIndA, blockDim, info, f, x, policy,
                   pBuffer)
end

@checked function cusparseShybsv_analysis(handle, transA, descrA, hybA, info)
    initialize_api()
    @runtime_ccall((:cusparseShybsv_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseMatDescr_t,
                    cusparseHybMat_t, cusparseSolveAnalysisInfo_t),
                   handle, transA, descrA, hybA, info)
end

@checked function cusparseDhybsv_analysis(handle, transA, descrA, hybA, info)
    initialize_api()
    @runtime_ccall((:cusparseDhybsv_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseMatDescr_t,
                    cusparseHybMat_t, cusparseSolveAnalysisInfo_t),
                   handle, transA, descrA, hybA, info)
end

@checked function cusparseChybsv_analysis(handle, transA, descrA, hybA, info)
    initialize_api()
    @runtime_ccall((:cusparseChybsv_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseMatDescr_t,
                    cusparseHybMat_t, cusparseSolveAnalysisInfo_t),
                   handle, transA, descrA, hybA, info)
end

@checked function cusparseZhybsv_analysis(handle, transA, descrA, hybA, info)
    initialize_api()
    @runtime_ccall((:cusparseZhybsv_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseMatDescr_t,
                    cusparseHybMat_t, cusparseSolveAnalysisInfo_t),
                   handle, transA, descrA, hybA, info)
end

@checked function cusparseShybsv_solve(handle, trans, alpha, descrA, hybA, info, f, x)
    initialize_api()
    @runtime_ccall((:cusparseShybsv_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Ptr{Cfloat},
                    cusparseMatDescr_t, cusparseHybMat_t, cusparseSolveAnalysisInfo_t,
                    CuPtr{Cfloat}, CuPtr{Cfloat}),
                   handle, trans, alpha, descrA, hybA, info, f, x)
end

@checked function cusparseChybsv_solve(handle, trans, alpha, descrA, hybA, info, f, x)
    initialize_api()
    @runtime_ccall((:cusparseChybsv_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Ptr{cuComplex},
                    cusparseMatDescr_t, cusparseHybMat_t, cusparseSolveAnalysisInfo_t,
                    CuPtr{cuComplex}, CuPtr{cuComplex}),
                   handle, trans, alpha, descrA, hybA, info, f, x)
end

@checked function cusparseDhybsv_solve(handle, trans, alpha, descrA, hybA, info, f, x)
    initialize_api()
    @runtime_ccall((:cusparseDhybsv_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Ptr{Cdouble},
                    cusparseMatDescr_t, cusparseHybMat_t, cusparseSolveAnalysisInfo_t,
                    CuPtr{Cdouble}, CuPtr{Cdouble}),
                   handle, trans, alpha, descrA, hybA, info, f, x)
end

@checked function cusparseZhybsv_solve(handle, trans, alpha, descrA, hybA, info, f, x)
    initialize_api()
    @runtime_ccall((:cusparseZhybsv_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Ptr{cuDoubleComplex},
                    cusparseMatDescr_t, cusparseHybMat_t, cusparseSolveAnalysisInfo_t,
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}),
                   handle, trans, alpha, descrA, hybA, info, f, x)
end

@checked function cusparseScsrmm(handle, transA, m, n, k, nnz, alpha, descrA,
                                 csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb,
                                 beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseScsrmm, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint, Cint,
                    Ptr{Cfloat}, cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{Cfloat}, Cint, Ptr{Cfloat}, CuPtr{Cfloat}, Cint),
                   handle, transA, m, n, k, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, B, ldb, beta, C, ldc)
end

@checked function cusparseDcsrmm(handle, transA, m, n, k, nnz, alpha, descrA,
                                 csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb,
                                 beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseDcsrmm, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint, Cint,
                    Ptr{Cdouble}, cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{Cdouble}, Cint, Ptr{Cdouble}, CuPtr{Cdouble}, Cint),
                   handle, transA, m, n, k, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, B, ldb, beta, C, ldc)
end

@checked function cusparseCcsrmm(handle, transA, m, n, k, nnz, alpha, descrA,
                                 csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb,
                                 beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseCcsrmm, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint, Cint,
                    Ptr{cuComplex}, cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{cuComplex}, Cint, Ptr{cuComplex}, CuPtr{cuComplex},
                    Cint),
                   handle, transA, m, n, k, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, B, ldb, beta, C, ldc)
end

@checked function cusparseZcsrmm(handle, transA, m, n, k, nnz, alpha, descrA,
                                 csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb,
                                 beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseZcsrmm, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Cint, Cint,
                    Ptr{cuDoubleComplex}, cusparseMatDescr_t, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{cuDoubleComplex}, Cint,
                    Ptr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint),
                   handle, transA, m, n, k, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, B, ldb, beta, C, ldc)
end

@checked function cusparseScsrmm2(handle, transA, transB, m, n, k, nnz, alpha, descrA,
                                  csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B,
                                  ldb, beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseScsrmm2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseOperation_t, Cint,
                    Cint, Cint, Cint, Ptr{Cfloat}, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cfloat}, Cint, Ptr{Cfloat},
                    CuPtr{Cfloat}, Cint),
                   handle, transA, transB, m, n, k, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, B, ldb, beta, C, ldc)
end

@checked function cusparseDcsrmm2(handle, transA, transB, m, n, k, nnz, alpha, descrA,
                                  csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B,
                                  ldb, beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseDcsrmm2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseOperation_t, Cint,
                    Cint, Cint, Cint, Ptr{Cdouble}, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cdouble}, Cint, Ptr{Cdouble},
                    CuPtr{Cdouble}, Cint),
                   handle, transA, transB, m, n, k, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, B, ldb, beta, C, ldc)
end

@checked function cusparseCcsrmm2(handle, transA, transB, m, n, k, nnz, alpha, descrA,
                                  csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B,
                                  ldb, beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseCcsrmm2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseOperation_t, Cint,
                    Cint, Cint, Cint, Ptr{cuComplex}, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{cuComplex}, Cint, Ptr{cuComplex},
                    CuPtr{cuComplex}, Cint),
                   handle, transA, transB, m, n, k, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, B, ldb, beta, C, ldc)
end

@checked function cusparseZcsrmm2(handle, transA, transB, m, n, k, nnz, alpha, descrA,
                                  csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B,
                                  ldb, beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseZcsrmm2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseOperation_t, Cint,
                    Cint, Cint, Cint, Ptr{cuDoubleComplex}, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{cuDoubleComplex}, Cint, Ptr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, transA, transB, m, n, k, nnz, alpha, descrA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, B, ldb, beta, C, ldc)
end

@checked function cusparseSbsrmm(handle, dirA, transA, transB, mb, n, kb, nnzb, alpha,
                                 descrA, bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA,
                                 blockSize, B, ldb, beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseSbsrmm, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, Cint, Ptr{Cfloat},
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    CuPtr{Cfloat}, Cint, Ptr{Cfloat}, CuPtr{Cfloat}, Cint),
                   handle, dirA, transA, transB, mb, n, kb, nnzb, alpha, descrA,
                   bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA, blockSize, B, ldb,
                   beta, C, ldc)
end

@checked function cusparseDbsrmm(handle, dirA, transA, transB, mb, n, kb, nnzb, alpha,
                                 descrA, bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA,
                                 blockSize, B, ldb, beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseDbsrmm, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, Cint, Ptr{Cdouble},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    CuPtr{Cdouble}, Cint, Ptr{Cdouble}, CuPtr{Cdouble}, Cint),
                   handle, dirA, transA, transB, mb, n, kb, nnzb, alpha, descrA,
                   bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA, blockSize, B, ldb,
                   beta, C, ldc)
end

@checked function cusparseCbsrmm(handle, dirA, transA, transB, mb, n, kb, nnzb, alpha,
                                 descrA, bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA,
                                 blockSize, B, ldb, beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseCbsrmm, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, Cint, Ptr{cuComplex},
                    cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    CuPtr{cuComplex}, Cint, Ptr{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, dirA, transA, transB, mb, n, kb, nnzb, alpha, descrA,
                   bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA, blockSize, B, ldb,
                   beta, C, ldc)
end

@checked function cusparseZbsrmm(handle, dirA, transA, transB, mb, n, kb, nnzb, alpha,
                                 descrA, bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA,
                                 blockSize, B, ldb, beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseZbsrmm, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, Cint, Ptr{cuDoubleComplex},
                    cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, CuPtr{cuDoubleComplex}, Cint, Ptr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, dirA, transA, transB, mb, n, kb, nnzb, alpha, descrA,
                   bsrSortedValA, bsrSortedRowPtrA, bsrSortedColIndA, blockSize, B, ldb,
                   beta, C, ldc)
end

@checked function cusparseSgemmi(handle, m, n, k, nnz, alpha, A, lda, cscValB, cscColPtrB,
                                 cscRowIndB, beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseSgemmi, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, Cint, Ptr{Cfloat}, CuPtr{Cfloat},
                    Cint, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Cfloat},
                    CuPtr{Cfloat}, Cint),
                   handle, m, n, k, nnz, alpha, A, lda, cscValB, cscColPtrB, cscRowIndB,
                   beta, C, ldc)
end

@checked function cusparseDgemmi(handle, m, n, k, nnz, alpha, A, lda, cscValB, cscColPtrB,
                                 cscRowIndB, beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseDgemmi, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, Cint, Ptr{Cdouble},
                    CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    Ptr{Cdouble}, CuPtr{Cdouble}, Cint),
                   handle, m, n, k, nnz, alpha, A, lda, cscValB, cscColPtrB, cscRowIndB,
                   beta, C, ldc)
end

@checked function cusparseCgemmi(handle, m, n, k, nnz, alpha, A, lda, cscValB, cscColPtrB,
                                 cscRowIndB, beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseCgemmi, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, Cint, Ptr{cuComplex},
                    CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    Ptr{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, m, n, k, nnz, alpha, A, lda, cscValB, cscColPtrB, cscRowIndB,
                   beta, C, ldc)
end

@checked function cusparseZgemmi(handle, m, n, k, nnz, alpha, A, lda, cscValB, cscColPtrB,
                                 cscRowIndB, beta, C, ldc)
    initialize_api()
    @runtime_ccall((:cusparseZgemmi, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, Cint, Ptr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, CuPtr{Cint},
                    CuPtr{Cint}, Ptr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint),
                   handle, m, n, k, nnz, alpha, A, lda, cscValB, cscColPtrB, cscRowIndB,
                   beta, C, ldc)
end

@checked function cusparseScsrsm_analysis(handle, transA, m, nnz, descrA, csrSortedValA,
                                          csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseScsrsm_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, cusparseSolveAnalysisInfo_t),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseDcsrsm_analysis(handle, transA, m, nnz, descrA, csrSortedValA,
                                          csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseDcsrsm_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, cusparseSolveAnalysisInfo_t),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseCcsrsm_analysis(handle, transA, m, nnz, descrA, csrSortedValA,
                                          csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseCcsrsm_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, cusparseSolveAnalysisInfo_t),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseZcsrsm_analysis(handle, transA, m, nnz, descrA, csrSortedValA,
                                          csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseZcsrsm_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseSolveAnalysisInfo_t),
                   handle, transA, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseScsrsm_solve(handle, transA, m, n, alpha, descrA, csrSortedValA,
                                       csrSortedRowPtrA, csrSortedColIndA, info, B, ldb, X,
                                       ldx)
    initialize_api()
    @runtime_ccall((:cusparseScsrsm_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Ptr{Cfloat},
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseSolveAnalysisInfo_t, CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint),
                   handle, transA, m, n, alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, B, ldb, X, ldx)
end

@checked function cusparseDcsrsm_solve(handle, transA, m, n, alpha, descrA, csrSortedValA,
                                       csrSortedRowPtrA, csrSortedColIndA, info, B, ldb, X,
                                       ldx)
    initialize_api()
    @runtime_ccall((:cusparseDcsrsm_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Ptr{Cdouble},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseSolveAnalysisInfo_t, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint),
                   handle, transA, m, n, alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, B, ldb, X, ldx)
end

@checked function cusparseCcsrsm_solve(handle, transA, m, n, alpha, descrA, csrSortedValA,
                                       csrSortedRowPtrA, csrSortedColIndA, info, B, ldb, X,
                                       ldx)
    initialize_api()
    @runtime_ccall((:cusparseCcsrsm_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint, Ptr{cuComplex},
                    cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseSolveAnalysisInfo_t, CuPtr{cuComplex}, Cint, CuPtr{cuComplex},
                    Cint),
                   handle, transA, m, n, alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, B, ldb, X, ldx)
end

@checked function cusparseZcsrsm_solve(handle, transA, m, n, alpha, descrA, csrSortedValA,
                                       csrSortedRowPtrA, csrSortedColIndA, info, B, ldb, X,
                                       ldx)
    initialize_api()
    @runtime_ccall((:cusparseZcsrsm_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, Cint,
                    Ptr{cuDoubleComplex}, cusparseMatDescr_t, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, cusparseSolveAnalysisInfo_t,
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{cuDoubleComplex}, Cint),
                   handle, transA, m, n, alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, B, ldb, X, ldx)
end

@checked function cusparseCreateCsrsm2Info(info)
    initialize_api()
    @runtime_ccall((:cusparseCreateCsrsm2Info, libcusparse()), cusparseStatus_t,
                   (Ptr{csrsm2Info_t},),
                   info)
end

@checked function cusparseDestroyCsrsm2Info(info)
    initialize_api()
    @runtime_ccall((:cusparseDestroyCsrsm2Info, libcusparse()), cusparseStatus_t,
                   (csrsm2Info_t,),
                   info)
end

@checked function cusparseXcsrsm2_zeroPivot(handle, info, position)
    initialize_api()
    @runtime_ccall((:cusparseXcsrsm2_zeroPivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, csrsm2Info_t, Ptr{Cint}),
                   handle, info, position)
end

@checked function cusparseScsrsm2_bufferSizeExt(handle, algo, transA, transB, m, nrhs, nnz,
                                                alpha, descrA, csrSortedValA,
                                                csrSortedRowPtrA, csrSortedColIndA, B, ldb,
                                                info, policy, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseScsrsm2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseOperation_t, cusparseOperation_t,
                    Cint, Cint, Cint, Ptr{Cfloat}, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cfloat}, Cint, csrsm2Info_t,
                    cusparseSolvePolicy_t, Ptr{Csize_t}),
                   handle, algo, transA, transB, m, nrhs, nnz, alpha, descrA,
                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb, info, policy,
                   pBufferSize)
end

@checked function cusparseDcsrsm2_bufferSizeExt(handle, algo, transA, transB, m, nrhs, nnz,
                                                alpha, descrA, csrSortedValA,
                                                csrSortedRowPtrA, csrSortedColIndA, B, ldb,
                                                info, policy, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseDcsrsm2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseOperation_t, cusparseOperation_t,
                    Cint, Cint, Cint, Ptr{Cdouble}, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cdouble}, Cint, csrsm2Info_t,
                    cusparseSolvePolicy_t, Ptr{Csize_t}),
                   handle, algo, transA, transB, m, nrhs, nnz, alpha, descrA,
                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb, info, policy,
                   pBufferSize)
end

@checked function cusparseCcsrsm2_bufferSizeExt(handle, algo, transA, transB, m, nrhs, nnz,
                                                alpha, descrA, csrSortedValA,
                                                csrSortedRowPtrA, csrSortedColIndA, B, ldb,
                                                info, policy, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseCcsrsm2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseOperation_t, cusparseOperation_t,
                    Cint, Cint, Cint, Ptr{cuComplex}, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{cuComplex}, Cint, csrsm2Info_t,
                    cusparseSolvePolicy_t, Ptr{Csize_t}),
                   handle, algo, transA, transB, m, nrhs, nnz, alpha, descrA,
                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb, info, policy,
                   pBufferSize)
end

@checked function cusparseZcsrsm2_bufferSizeExt(handle, algo, transA, transB, m, nrhs, nnz,
                                                alpha, descrA, csrSortedValA,
                                                csrSortedRowPtrA, csrSortedColIndA, B, ldb,
                                                info, policy, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseZcsrsm2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseOperation_t, cusparseOperation_t,
                    Cint, Cint, Cint, Ptr{cuDoubleComplex}, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{cuDoubleComplex}, Cint, csrsm2Info_t, cusparseSolvePolicy_t,
                    Ptr{Csize_t}),
                   handle, algo, transA, transB, m, nrhs, nnz, alpha, descrA,
                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb, info, policy,
                   pBufferSize)
end

@checked function cusparseScsrsm2_analysis(handle, algo, transA, transB, m, nrhs, nnz,
                                           alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                                           csrSortedColIndA, B, ldb, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseScsrsm2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseOperation_t, cusparseOperation_t,
                    Cint, Cint, Cint, Ptr{Cfloat}, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cfloat}, Cint, csrsm2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, algo, transA, transB, m, nrhs, nnz, alpha, descrA,
                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb, info, policy,
                   pBuffer)
end

@checked function cusparseDcsrsm2_analysis(handle, algo, transA, transB, m, nrhs, nnz,
                                           alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                                           csrSortedColIndA, B, ldb, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDcsrsm2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseOperation_t, cusparseOperation_t,
                    Cint, Cint, Cint, Ptr{Cdouble}, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cdouble}, Cint, csrsm2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, algo, transA, transB, m, nrhs, nnz, alpha, descrA,
                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb, info, policy,
                   pBuffer)
end

@checked function cusparseCcsrsm2_analysis(handle, algo, transA, transB, m, nrhs, nnz,
                                           alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                                           csrSortedColIndA, B, ldb, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCcsrsm2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseOperation_t, cusparseOperation_t,
                    Cint, Cint, Cint, Ptr{cuComplex}, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{cuComplex}, Cint, csrsm2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, algo, transA, transB, m, nrhs, nnz, alpha, descrA,
                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb, info, policy,
                   pBuffer)
end

@checked function cusparseZcsrsm2_analysis(handle, algo, transA, transB, m, nrhs, nnz,
                                           alpha, descrA, csrSortedValA, csrSortedRowPtrA,
                                           csrSortedColIndA, B, ldb, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZcsrsm2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseOperation_t, cusparseOperation_t,
                    Cint, Cint, Cint, Ptr{cuDoubleComplex}, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{cuDoubleComplex}, Cint, csrsm2Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, algo, transA, transB, m, nrhs, nnz, alpha, descrA,
                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb, info, policy,
                   pBuffer)
end

@checked function cusparseScsrsm2_solve(handle, algo, transA, transB, m, nrhs, nnz, alpha,
                                        descrA, csrSortedValA, csrSortedRowPtrA,
                                        csrSortedColIndA, B, ldb, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseScsrsm2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseOperation_t, cusparseOperation_t,
                    Cint, Cint, Cint, Ptr{Cfloat}, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cfloat}, Cint, csrsm2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, algo, transA, transB, m, nrhs, nnz, alpha, descrA,
                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb, info, policy,
                   pBuffer)
end

@checked function cusparseDcsrsm2_solve(handle, algo, transA, transB, m, nrhs, nnz, alpha,
                                        descrA, csrSortedValA, csrSortedRowPtrA,
                                        csrSortedColIndA, B, ldb, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDcsrsm2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseOperation_t, cusparseOperation_t,
                    Cint, Cint, Cint, Ptr{Cdouble}, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cdouble}, Cint, csrsm2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, algo, transA, transB, m, nrhs, nnz, alpha, descrA,
                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb, info, policy,
                   pBuffer)
end

@checked function cusparseCcsrsm2_solve(handle, algo, transA, transB, m, nrhs, nnz, alpha,
                                        descrA, csrSortedValA, csrSortedRowPtrA,
                                        csrSortedColIndA, B, ldb, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCcsrsm2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseOperation_t, cusparseOperation_t,
                    Cint, Cint, Cint, Ptr{cuComplex}, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{cuComplex}, Cint, csrsm2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, algo, transA, transB, m, nrhs, nnz, alpha, descrA,
                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb, info, policy,
                   pBuffer)
end

@checked function cusparseZcsrsm2_solve(handle, algo, transA, transB, m, nrhs, nnz, alpha,
                                        descrA, csrSortedValA, csrSortedRowPtrA,
                                        csrSortedColIndA, B, ldb, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZcsrsm2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseOperation_t, cusparseOperation_t,
                    Cint, Cint, Cint, Ptr{cuDoubleComplex}, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{cuDoubleComplex}, Cint, csrsm2Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, algo, transA, transB, m, nrhs, nnz, alpha, descrA,
                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA, B, ldb, info, policy,
                   pBuffer)
end

@checked function cusparseXbsrsm2_zeroPivot(handle, info, position)
    initialize_api()
    @runtime_ccall((:cusparseXbsrsm2_zeroPivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, bsrsm2Info_t, Ptr{Cint}),
                   handle, info, position)
end

@checked function cusparseSbsrsm2_bufferSize(handle, dirA, transA, transXY, mb, n, nnzb,
                                             descrA, bsrSortedVal, bsrSortedRowPtr,
                                             bsrSortedColInd, blockSize, info,
                                             pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSbsrsm2_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsm2Info_t, Ptr{Cint}),
                   handle, dirA, transA, transXY, mb, n, nnzb, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, pBufferSizeInBytes)
end

@checked function cusparseDbsrsm2_bufferSize(handle, dirA, transA, transXY, mb, n, nnzb,
                                             descrA, bsrSortedVal, bsrSortedRowPtr,
                                             bsrSortedColInd, blockSize, info,
                                             pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDbsrsm2_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsm2Info_t, Ptr{Cint}),
                   handle, dirA, transA, transXY, mb, n, nnzb, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, pBufferSizeInBytes)
end

@checked function cusparseCbsrsm2_bufferSize(handle, dirA, transA, transXY, mb, n, nnzb,
                                             descrA, bsrSortedVal, bsrSortedRowPtr,
                                             bsrSortedColInd, blockSize, info,
                                             pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCbsrsm2_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsm2Info_t,
                    Ptr{Cint}),
                   handle, dirA, transA, transXY, mb, n, nnzb, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, pBufferSizeInBytes)
end

@checked function cusparseZbsrsm2_bufferSize(handle, dirA, transA, transXY, mb, n, nnzb,
                                             descrA, bsrSortedVal, bsrSortedRowPtr,
                                             bsrSortedColInd, blockSize, info,
                                             pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZbsrsm2_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsm2Info_t,
                    Ptr{Cint}),
                   handle, dirA, transA, transXY, mb, n, nnzb, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, pBufferSizeInBytes)
end

@checked function cusparseSbsrsm2_bufferSizeExt(handle, dirA, transA, transB, mb, n, nnzb,
                                                descrA, bsrSortedVal, bsrSortedRowPtr,
                                                bsrSortedColInd, blockSize, info,
                                                pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseSbsrsm2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsm2Info_t,
                    CuPtr{Csize_t}),
                   handle, dirA, transA, transB, mb, n, nnzb, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, pBufferSize)
end

@checked function cusparseDbsrsm2_bufferSizeExt(handle, dirA, transA, transB, mb, n, nnzb,
                                                descrA, bsrSortedVal, bsrSortedRowPtr,
                                                bsrSortedColInd, blockSize, info,
                                                pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseDbsrsm2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsm2Info_t,
                    Ptr{Csize_t}),
                   handle, dirA, transA, transB, mb, n, nnzb, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, pBufferSize)
end

@checked function cusparseCbsrsm2_bufferSizeExt(handle, dirA, transA, transB, mb, n, nnzb,
                                                descrA, bsrSortedVal, bsrSortedRowPtr,
                                                bsrSortedColInd, blockSize, info,
                                                pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseCbsrsm2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsm2Info_t,
                    Ptr{Csize_t}),
                   handle, dirA, transA, transB, mb, n, nnzb, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, pBufferSize)
end

@checked function cusparseZbsrsm2_bufferSizeExt(handle, dirA, transA, transB, mb, n, nnzb,
                                                descrA, bsrSortedVal, bsrSortedRowPtr,
                                                bsrSortedColInd, blockSize, info,
                                                pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseZbsrsm2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsm2Info_t,
                    Ptr{Csize_t}),
                   handle, dirA, transA, transB, mb, n, nnzb, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, pBufferSize)
end

@checked function cusparseSbsrsm2_analysis(handle, dirA, transA, transXY, mb, n, nnzb,
                                           descrA, bsrSortedVal, bsrSortedRowPtr,
                                           bsrSortedColInd, blockSize, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSbsrsm2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsm2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, transXY, mb, n, nnzb, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, policy, pBuffer)
end

@checked function cusparseDbsrsm2_analysis(handle, dirA, transA, transXY, mb, n, nnzb,
                                           descrA, bsrSortedVal, bsrSortedRowPtr,
                                           bsrSortedColInd, blockSize, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDbsrsm2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsm2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, transXY, mb, n, nnzb, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, policy, pBuffer)
end

@checked function cusparseCbsrsm2_analysis(handle, dirA, transA, transXY, mb, n, nnzb,
                                           descrA, bsrSortedVal, bsrSortedRowPtr,
                                           bsrSortedColInd, blockSize, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCbsrsm2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsm2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, transXY, mb, n, nnzb, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, policy, pBuffer)
end

@checked function cusparseZbsrsm2_analysis(handle, dirA, transA, transXY, mb, n, nnzb,
                                           descrA, bsrSortedVal, bsrSortedRowPtr,
                                           bsrSortedColInd, blockSize, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZbsrsm2_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsm2Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, transXY, mb, n, nnzb, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, policy, pBuffer)
end

@checked function cusparseSbsrsm2_solve(handle, dirA, transA, transXY, mb, n, nnzb, alpha,
                                        descrA, bsrSortedVal, bsrSortedRowPtr,
                                        bsrSortedColInd, blockSize, info, B, ldb, X, ldx,
                                        policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSbsrsm2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, Ptr{Cfloat}, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrsm2Info_t,
                    CuPtr{Cfloat}, Cint, CuPtr{Cfloat}, Cint, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, dirA, transA, transXY, mb, n, nnzb, alpha, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, B, ldb, X, ldx,
                   policy, pBuffer)
end

@checked function cusparseDbsrsm2_solve(handle, dirA, transA, transXY, mb, n, nnzb, alpha,
                                        descrA, bsrSortedVal, bsrSortedRowPtr,
                                        bsrSortedColInd, blockSize, info, B, ldb, X, ldx,
                                        policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDbsrsm2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, Ptr{Cdouble},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    bsrsm2Info_t, CuPtr{Cdouble}, Cint, CuPtr{Cdouble}, Cint,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, transXY, mb, n, nnzb, alpha, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, B, ldb, X, ldx,
                   policy, pBuffer)
end

@checked function cusparseCbsrsm2_solve(handle, dirA, transA, transXY, mb, n, nnzb, alpha,
                                        descrA, bsrSortedVal, bsrSortedRowPtr,
                                        bsrSortedColInd, blockSize, info, B, ldb, X, ldx,
                                        policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCbsrsm2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, Ptr{cuComplex},
                    cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    bsrsm2Info_t, CuPtr{cuComplex}, Cint, CuPtr{cuComplex}, Cint,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, transXY, mb, n, nnzb, alpha, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, B, ldb, X, ldx,
                   policy, pBuffer)
end

@checked function cusparseZbsrsm2_solve(handle, dirA, transA, transXY, mb, n, nnzb, alpha,
                                        descrA, bsrSortedVal, bsrSortedRowPtr,
                                        bsrSortedColInd, blockSize, info, B, ldb, X, ldx,
                                        policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZbsrsm2_solve, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, cusparseOperation_t,
                    cusparseOperation_t, Cint, Cint, Cint, Ptr{cuDoubleComplex},
                    cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, bsrsm2Info_t, CuPtr{cuDoubleComplex}, Cint,
                    CuPtr{cuDoubleComplex}, Cint, cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, transA, transXY, mb, n, nnzb, alpha, descrA, bsrSortedVal,
                   bsrSortedRowPtr, bsrSortedColInd, blockSize, info, B, ldb, X, ldx,
                   policy, pBuffer)
end

@checked function cusparseCsrilu0Ex(handle, trans, m, descrA, csrSortedValA_ValM,
                                    csrSortedValA_ValMtype, csrSortedRowPtrA,
                                    csrSortedColIndA, info, executiontype)
    initialize_api()
    @runtime_ccall((:cusparseCsrilu0Ex, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, cusparseMatDescr_t,
                    CuPtr{Cvoid}, cudaDataType, CuPtr{Cint}, CuPtr{Cint},
                    cusparseSolveAnalysisInfo_t, cudaDataType),
                   handle, trans, m, descrA, csrSortedValA_ValM, csrSortedValA_ValMtype,
                   csrSortedRowPtrA, csrSortedColIndA, info, executiontype)
end

@checked function cusparseScsrilu0(handle, trans, m, descrA, csrSortedValA_ValM,
                                   csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseScsrilu0, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, cusparseSolveAnalysisInfo_t),
                   handle, trans, m, descrA, csrSortedValA_ValM, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseDcsrilu0(handle, trans, m, descrA, csrSortedValA_ValM,
                                   csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseDcsrilu0, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, cusparseSolveAnalysisInfo_t),
                   handle, trans, m, descrA, csrSortedValA_ValM, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseCcsrilu0(handle, trans, m, descrA, csrSortedValA_ValM,
                                   csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseCcsrilu0, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, cusparseSolveAnalysisInfo_t),
                   handle, trans, m, descrA, csrSortedValA_ValM, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseZcsrilu0(handle, trans, m, descrA, csrSortedValA_ValM,
                                   csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseZcsrilu0, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseSolveAnalysisInfo_t),
                   handle, trans, m, descrA, csrSortedValA_ValM, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseScsrilu02_numericBoost(handle, info, enable_boost, tol, boost_val)
    initialize_api()
    @runtime_ccall((:cusparseScsrilu02_numericBoost, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, csrilu02Info_t, Cint, Ptr{Cdouble}, Ptr{Cfloat}),
                   handle, info, enable_boost, tol, boost_val)
end

@checked function cusparseDcsrilu02_numericBoost(handle, info, enable_boost, tol, boost_val)
    initialize_api()
    @runtime_ccall((:cusparseDcsrilu02_numericBoost, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, csrilu02Info_t, Cint, Ptr{Cdouble}, Ptr{Cdouble}),
                   handle, info, enable_boost, tol, boost_val)
end

@checked function cusparseCcsrilu02_numericBoost(handle, info, enable_boost, tol, boost_val)
    initialize_api()
    @runtime_ccall((:cusparseCcsrilu02_numericBoost, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, csrilu02Info_t, Cint, Ptr{Cdouble}, Ptr{cuComplex}),
                   handle, info, enable_boost, tol, boost_val)
end

@checked function cusparseZcsrilu02_numericBoost(handle, info, enable_boost, tol, boost_val)
    initialize_api()
    @runtime_ccall((:cusparseZcsrilu02_numericBoost, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, csrilu02Info_t, Cint, Ptr{Cdouble},
                    Ptr{cuDoubleComplex}),
                   handle, info, enable_boost, tol, boost_val)
end

@checked function cusparseXcsrilu02_zeroPivot(handle, info, position)
    initialize_api()
    @runtime_ccall((:cusparseXcsrilu02_zeroPivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, csrilu02Info_t, Ptr{Cint}),
                   handle, info, position)
end

@checked function cusparseScsrilu02_bufferSize(handle, m, nnz, descrA, csrSortedValA,
                                               csrSortedRowPtrA, csrSortedColIndA, info,
                                               pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseScsrilu02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t, Ptr{Cint}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSizeInBytes)
end

@checked function cusparseDcsrilu02_bufferSize(handle, m, nnz, descrA, csrSortedValA,
                                               csrSortedRowPtrA, csrSortedColIndA, info,
                                               pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDcsrilu02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t, Ptr{Cint}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSizeInBytes)
end

@checked function cusparseCcsrilu02_bufferSize(handle, m, nnz, descrA, csrSortedValA,
                                               csrSortedRowPtrA, csrSortedColIndA, info,
                                               pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCcsrilu02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t, Ptr{Cint}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSizeInBytes)
end

@checked function cusparseZcsrilu02_bufferSize(handle, m, nnz, descrA, csrSortedValA,
                                               csrSortedRowPtrA, csrSortedColIndA, info,
                                               pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZcsrilu02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t,
                    Ptr{Cint}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSizeInBytes)
end

@checked function cusparseScsrilu02_bufferSizeExt(handle, m, nnz, descrA, csrSortedVal,
                                                  csrSortedRowPtr, csrSortedColInd, info,
                                                  pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseScsrilu02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t, Ptr{Csize_t}),
                   handle, m, nnz, descrA, csrSortedVal, csrSortedRowPtr, csrSortedColInd,
                   info, pBufferSize)
end

@checked function cusparseDcsrilu02_bufferSizeExt(handle, m, nnz, descrA, csrSortedVal,
                                                  csrSortedRowPtr, csrSortedColInd, info,
                                                  pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseDcsrilu02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t, Ptr{Csize_t}),
                   handle, m, nnz, descrA, csrSortedVal, csrSortedRowPtr, csrSortedColInd,
                   info, pBufferSize)
end

@checked function cusparseCcsrilu02_bufferSizeExt(handle, m, nnz, descrA, csrSortedVal,
                                                  csrSortedRowPtr, csrSortedColInd, info,
                                                  pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseCcsrilu02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t, Ptr{Csize_t}),
                   handle, m, nnz, descrA, csrSortedVal, csrSortedRowPtr, csrSortedColInd,
                   info, pBufferSize)
end

@checked function cusparseZcsrilu02_bufferSizeExt(handle, m, nnz, descrA, csrSortedVal,
                                                  csrSortedRowPtr, csrSortedColInd, info,
                                                  pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseZcsrilu02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t,
                    Ptr{Csize_t}),
                   handle, m, nnz, descrA, csrSortedVal, csrSortedRowPtr, csrSortedColInd,
                   info, pBufferSize)
end

@checked function cusparseScsrilu02_analysis(handle, m, nnz, descrA, csrSortedValA,
                                             csrSortedRowPtrA, csrSortedColIndA, info,
                                             policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseScsrilu02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseDcsrilu02_analysis(handle, m, nnz, descrA, csrSortedValA,
                                             csrSortedRowPtrA, csrSortedColIndA, info,
                                             policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDcsrilu02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseCcsrilu02_analysis(handle, m, nnz, descrA, csrSortedValA,
                                             csrSortedRowPtrA, csrSortedColIndA, info,
                                             policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCcsrilu02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseZcsrilu02_analysis(handle, m, nnz, descrA, csrSortedValA,
                                             csrSortedRowPtrA, csrSortedColIndA, info,
                                             policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZcsrilu02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseScsrilu02(handle, m, nnz, descrA, csrSortedValA_valM,
                                    csrSortedRowPtrA, csrSortedColIndA, info, policy,
                                    pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseScsrilu02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA_valM, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseDcsrilu02(handle, m, nnz, descrA, csrSortedValA_valM,
                                    csrSortedRowPtrA, csrSortedColIndA, info, policy,
                                    pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDcsrilu02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA_valM, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseCcsrilu02(handle, m, nnz, descrA, csrSortedValA_valM,
                                    csrSortedRowPtrA, csrSortedColIndA, info, policy,
                                    pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCcsrilu02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA_valM, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseZcsrilu02(handle, m, nnz, descrA, csrSortedValA_valM,
                                    csrSortedRowPtrA, csrSortedColIndA, info, policy,
                                    pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZcsrilu02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, csrilu02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA_valM, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseSbsrilu02_numericBoost(handle, info, enable_boost, tol, boost_val)
    initialize_api()
    @runtime_ccall((:cusparseSbsrilu02_numericBoost, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, bsrilu02Info_t, Cint, Ptr{Cdouble}, Ptr{Cfloat}),
                   handle, info, enable_boost, tol, boost_val)
end

@checked function cusparseDbsrilu02_numericBoost(handle, info, enable_boost, tol, boost_val)
    initialize_api()
    @runtime_ccall((:cusparseDbsrilu02_numericBoost, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, bsrilu02Info_t, Cint, Ptr{Cdouble}, Ptr{Cdouble}),
                   handle, info, enable_boost, tol, boost_val)
end

@checked function cusparseCbsrilu02_numericBoost(handle, info, enable_boost, tol, boost_val)
    initialize_api()
    @runtime_ccall((:cusparseCbsrilu02_numericBoost, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, bsrilu02Info_t, Cint, Ptr{Cdouble}, Ptr{cuComplex}),
                   handle, info, enable_boost, tol, boost_val)
end

@checked function cusparseZbsrilu02_numericBoost(handle, info, enable_boost, tol, boost_val)
    initialize_api()
    @runtime_ccall((:cusparseZbsrilu02_numericBoost, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, bsrilu02Info_t, Cint, Ptr{Cdouble},
                    Ptr{cuDoubleComplex}),
                   handle, info, enable_boost, tol, boost_val)
end

@checked function cusparseXbsrilu02_zeroPivot(handle, info, position)
    initialize_api()
    @runtime_ccall((:cusparseXbsrilu02_zeroPivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, bsrilu02Info_t, Ptr{Cint}),
                   handle, info, position)
end

@checked function cusparseSbsrilu02_bufferSize(handle, dirA, mb, nnzb, descrA,
                                               bsrSortedVal, bsrSortedRowPtr,
                                               bsrSortedColInd, blockDim, info,
                                               pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSbsrilu02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    Ptr{Cint}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, pBufferSizeInBytes)
end

@checked function cusparseDbsrilu02_bufferSize(handle, dirA, mb, nnzb, descrA,
                                               bsrSortedVal, bsrSortedRowPtr,
                                               bsrSortedColInd, blockDim, info,
                                               pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDbsrilu02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    Ptr{Cint}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, pBufferSizeInBytes)
end

@checked function cusparseCbsrilu02_bufferSize(handle, dirA, mb, nnzb, descrA,
                                               bsrSortedVal, bsrSortedRowPtr,
                                               bsrSortedColInd, blockDim, info,
                                               pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCbsrilu02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    Ptr{Cint}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, pBufferSizeInBytes)
end

@checked function cusparseZbsrilu02_bufferSize(handle, dirA, mb, nnzb, descrA,
                                               bsrSortedVal, bsrSortedRowPtr,
                                               bsrSortedColInd, blockDim, info,
                                               pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZbsrilu02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    Ptr{Cint}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, pBufferSizeInBytes)
end

@checked function cusparseSbsrilu02_bufferSizeExt(handle, dirA, mb, nnzb, descrA,
                                                  bsrSortedVal, bsrSortedRowPtr,
                                                  bsrSortedColInd, blockSize, info,
                                                  pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseSbsrilu02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    Ptr{Csize_t}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockSize, info, pBufferSize)
end

@checked function cusparseDbsrilu02_bufferSizeExt(handle, dirA, mb, nnzb, descrA,
                                                  bsrSortedVal, bsrSortedRowPtr,
                                                  bsrSortedColInd, blockSize, info,
                                                  pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseDbsrilu02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    Ptr{Csize_t}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockSize, info, pBufferSize)
end

@checked function cusparseCbsrilu02_bufferSizeExt(handle, dirA, mb, nnzb, descrA,
                                                  bsrSortedVal, bsrSortedRowPtr,
                                                  bsrSortedColInd, blockSize, info,
                                                  pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseCbsrilu02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    Ptr{Csize_t}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockSize, info, pBufferSize)
end

@checked function cusparseZbsrilu02_bufferSizeExt(handle, dirA, mb, nnzb, descrA,
                                                  bsrSortedVal, bsrSortedRowPtr,
                                                  bsrSortedColInd, blockSize, info,
                                                  pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseZbsrilu02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    Ptr{Csize_t}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockSize, info, pBufferSize)
end

@checked function cusparseSbsrilu02_analysis(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                             bsrSortedRowPtr, bsrSortedColInd, blockDim,
                                             info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSbsrilu02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pBuffer)
end

@checked function cusparseDbsrilu02_analysis(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                             bsrSortedRowPtr, bsrSortedColInd, blockDim,
                                             info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDbsrilu02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pBuffer)
end

@checked function cusparseCbsrilu02_analysis(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                             bsrSortedRowPtr, bsrSortedColInd, blockDim,
                                             info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCbsrilu02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pBuffer)
end

@checked function cusparseZbsrilu02_analysis(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                             bsrSortedRowPtr, bsrSortedColInd, blockDim,
                                             info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZbsrilu02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pBuffer)
end

@checked function cusparseSbsrilu02(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                    bsrSortedRowPtr, bsrSortedColInd, blockDim, info,
                                    policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSbsrilu02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pBuffer)
end

@checked function cusparseDbsrilu02(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                    bsrSortedRowPtr, bsrSortedColInd, blockDim, info,
                                    policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDbsrilu02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pBuffer)
end

@checked function cusparseCbsrilu02(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                    bsrSortedRowPtr, bsrSortedColInd, blockDim, info,
                                    policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCbsrilu02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pBuffer)
end

@checked function cusparseZbsrilu02(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                    bsrSortedRowPtr, bsrSortedColInd, blockDim, info,
                                    policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZbsrilu02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsrilu02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pBuffer)
end

@checked function cusparseScsric0(handle, trans, m, descrA, csrSortedValA_ValM,
                                  csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseScsric0, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, cusparseSolveAnalysisInfo_t),
                   handle, trans, m, descrA, csrSortedValA_ValM, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseDcsric0(handle, trans, m, descrA, csrSortedValA_ValM,
                                  csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseDcsric0, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, cusparseSolveAnalysisInfo_t),
                   handle, trans, m, descrA, csrSortedValA_ValM, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseCcsric0(handle, trans, m, descrA, csrSortedValA_ValM,
                                  csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseCcsric0, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, cusparseSolveAnalysisInfo_t),
                   handle, trans, m, descrA, csrSortedValA_ValM, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseZcsric0(handle, trans, m, descrA, csrSortedValA_ValM,
                                  csrSortedRowPtrA, csrSortedColIndA, info)
    initialize_api()
    @runtime_ccall((:cusparseZcsric0, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseSolveAnalysisInfo_t),
                   handle, trans, m, descrA, csrSortedValA_ValM, csrSortedRowPtrA,
                   csrSortedColIndA, info)
end

@checked function cusparseXcsric02_zeroPivot(handle, info, position)
    initialize_api()
    @runtime_ccall((:cusparseXcsric02_zeroPivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, csric02Info_t, Ptr{Cint}),
                   handle, info, position)
end

@checked function cusparseScsric02_bufferSize(handle, m, nnz, descrA, csrSortedValA,
                                              csrSortedRowPtrA, csrSortedColIndA, info,
                                              pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseScsric02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, csric02Info_t, Ptr{Cint}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSizeInBytes)
end

@checked function cusparseDcsric02_bufferSize(handle, m, nnz, descrA, csrSortedValA,
                                              csrSortedRowPtrA, csrSortedColIndA, info,
                                              pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDcsric02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, csric02Info_t, Ptr{Cint}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSizeInBytes)
end

@checked function cusparseCcsric02_bufferSize(handle, m, nnz, descrA, csrSortedValA,
                                              csrSortedRowPtrA, csrSortedColIndA, info,
                                              pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCcsric02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, csric02Info_t, Ptr{Cint}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSizeInBytes)
end

@checked function cusparseZcsric02_bufferSize(handle, m, nnz, descrA, csrSortedValA,
                                              csrSortedRowPtrA, csrSortedColIndA, info,
                                              pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZcsric02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, csric02Info_t,
                    Ptr{Cint}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, pBufferSizeInBytes)
end

@checked function cusparseScsric02_bufferSizeExt(handle, m, nnz, descrA, csrSortedVal,
                                                 csrSortedRowPtr, csrSortedColInd, info,
                                                 pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseScsric02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, csric02Info_t, Ptr{Csize_t}),
                   handle, m, nnz, descrA, csrSortedVal, csrSortedRowPtr, csrSortedColInd,
                   info, pBufferSize)
end

@checked function cusparseDcsric02_bufferSizeExt(handle, m, nnz, descrA, csrSortedVal,
                                                 csrSortedRowPtr, csrSortedColInd, info,
                                                 pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseDcsric02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, csric02Info_t, Ptr{Csize_t}),
                   handle, m, nnz, descrA, csrSortedVal, csrSortedRowPtr, csrSortedColInd,
                   info, pBufferSize)
end

@checked function cusparseCcsric02_bufferSizeExt(handle, m, nnz, descrA, csrSortedVal,
                                                 csrSortedRowPtr, csrSortedColInd, info,
                                                 pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseCcsric02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, csric02Info_t, Ptr{Csize_t}),
                   handle, m, nnz, descrA, csrSortedVal, csrSortedRowPtr, csrSortedColInd,
                   info, pBufferSize)
end

@checked function cusparseZcsric02_bufferSizeExt(handle, m, nnz, descrA, csrSortedVal,
                                                 csrSortedRowPtr, csrSortedColInd, info,
                                                 pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseZcsric02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, csric02Info_t,
                    Ptr{Csize_t}),
                   handle, m, nnz, descrA, csrSortedVal, csrSortedRowPtr, csrSortedColInd,
                   info, pBufferSize)
end

@checked function cusparseScsric02_analysis(handle, m, nnz, descrA, csrSortedValA,
                                            csrSortedRowPtrA, csrSortedColIndA, info,
                                            policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseScsric02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, csric02Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseDcsric02_analysis(handle, m, nnz, descrA, csrSortedValA,
                                            csrSortedRowPtrA, csrSortedColIndA, info,
                                            policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDcsric02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, csric02Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseCcsric02_analysis(handle, m, nnz, descrA, csrSortedValA,
                                            csrSortedRowPtrA, csrSortedColIndA, info,
                                            policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCcsric02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, csric02Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseZcsric02_analysis(handle, m, nnz, descrA, csrSortedValA,
                                            csrSortedRowPtrA, csrSortedColIndA, info,
                                            policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZcsric02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, csric02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseScsric02(handle, m, nnz, descrA, csrSortedValA_valM,
                                   csrSortedRowPtrA, csrSortedColIndA, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseScsric02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, csric02Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA_valM, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseDcsric02(handle, m, nnz, descrA, csrSortedValA_valM,
                                   csrSortedRowPtrA, csrSortedColIndA, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDcsric02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, csric02Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA_valM, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseCcsric02(handle, m, nnz, descrA, csrSortedValA_valM,
                                   csrSortedRowPtrA, csrSortedColIndA, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCcsric02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, csric02Info_t, cusparseSolvePolicy_t,
                    CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA_valM, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseZcsric02(handle, m, nnz, descrA, csrSortedValA_valM,
                                   csrSortedRowPtrA, csrSortedColIndA, info, policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZcsric02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, csric02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, m, nnz, descrA, csrSortedValA_valM, csrSortedRowPtrA,
                   csrSortedColIndA, info, policy, pBuffer)
end

@checked function cusparseXbsric02_zeroPivot(handle, info, position)
    initialize_api()
    @runtime_ccall((:cusparseXbsric02_zeroPivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, bsric02Info_t, Ptr{Cint}),
                   handle, info, position)
end

@checked function cusparseSbsric02_bufferSize(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                              bsrSortedRowPtr, bsrSortedColInd, blockDim,
                                              info, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSbsric02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t, Ptr{Cint}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, pBufferSizeInBytes)
end

@checked function cusparseDbsric02_bufferSize(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                              bsrSortedRowPtr, bsrSortedColInd, blockDim,
                                              info, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDbsric02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    Ptr{Cint}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, pBufferSizeInBytes)
end

@checked function cusparseCbsric02_bufferSize(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                              bsrSortedRowPtr, bsrSortedColInd, blockDim,
                                              info, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCbsric02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    Ptr{Cint}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, pBufferSizeInBytes)
end

@checked function cusparseZbsric02_bufferSize(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                              bsrSortedRowPtr, bsrSortedColInd, blockDim,
                                              info, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZbsric02_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    Ptr{Cint}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, pBufferSizeInBytes)
end

@checked function cusparseSbsric02_bufferSizeExt(handle, dirA, mb, nnzb, descrA,
                                                 bsrSortedVal, bsrSortedRowPtr,
                                                 bsrSortedColInd, blockSize, info,
                                                 pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseSbsric02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    Ptr{Csize_t}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockSize, info, pBufferSize)
end

@checked function cusparseDbsric02_bufferSizeExt(handle, dirA, mb, nnzb, descrA,
                                                 bsrSortedVal, bsrSortedRowPtr,
                                                 bsrSortedColInd, blockSize, info,
                                                 pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseDbsric02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    Ptr{Csize_t}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockSize, info, pBufferSize)
end

@checked function cusparseCbsric02_bufferSizeExt(handle, dirA, mb, nnzb, descrA,
                                                 bsrSortedVal, bsrSortedRowPtr,
                                                 bsrSortedColInd, blockSize, info,
                                                 pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseCbsric02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    Ptr{Csize_t}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockSize, info, pBufferSize)
end

@checked function cusparseZbsric02_bufferSizeExt(handle, dirA, mb, nnzb, descrA,
                                                 bsrSortedVal, bsrSortedRowPtr,
                                                 bsrSortedColInd, blockSize, info,
                                                 pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseZbsric02_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    Ptr{Csize_t}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockSize, info, pBufferSize)
end

@checked function cusparseSbsric02_analysis(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                            bsrSortedRowPtr, bsrSortedColInd, blockDim,
                                            info, policy, pInputBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSbsric02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pInputBuffer)
end

@checked function cusparseDbsric02_analysis(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                            bsrSortedRowPtr, bsrSortedColInd, blockDim,
                                            info, policy, pInputBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDbsric02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pInputBuffer)
end

@checked function cusparseCbsric02_analysis(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                            bsrSortedRowPtr, bsrSortedColInd, blockDim,
                                            info, policy, pInputBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCbsric02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pInputBuffer)
end

@checked function cusparseZbsric02_analysis(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                            bsrSortedRowPtr, bsrSortedColInd, blockDim,
                                            info, policy, pInputBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZbsric02_analysis, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pInputBuffer)
end

@checked function cusparseSbsric02(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                   bsrSortedRowPtr, bsrSortedColInd, blockDim, info,
                                   policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSbsric02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pBuffer)
end

@checked function cusparseDbsric02(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                   bsrSortedRowPtr, bsrSortedColInd, blockDim, info,
                                   policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDbsric02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pBuffer)
end

@checked function cusparseCbsric02(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                   bsrSortedRowPtr, bsrSortedColInd, blockDim, info,
                                   policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCbsric02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pBuffer)
end

@checked function cusparseZbsric02(handle, dirA, mb, nnzb, descrA, bsrSortedVal,
                                   bsrSortedRowPtr, bsrSortedColInd, blockDim, info,
                                   policy, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZbsric02, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, bsric02Info_t,
                    cusparseSolvePolicy_t, CuPtr{Cvoid}),
                   handle, dirA, mb, nnzb, descrA, bsrSortedVal, bsrSortedRowPtr,
                   bsrSortedColInd, blockDim, info, policy, pBuffer)
end

@checked function cusparseSgtsv(handle, m, n, dl, d, du, B, ldb)
    initialize_api()
    @runtime_ccall((:cusparseSgtsv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cfloat},
                    CuPtr{Cfloat}, CuPtr{Cfloat}, Cint),
                   handle, m, n, dl, d, du, B, ldb)
end

@checked function cusparseDgtsv(handle, m, n, dl, d, du, B, ldb)
    initialize_api()
    @runtime_ccall((:cusparseDgtsv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, Cint),
                   handle, m, n, dl, d, du, B, ldb)
end

@checked function cusparseCgtsv(handle, m, n, dl, d, du, B, ldb)
    initialize_api()
    @runtime_ccall((:cusparseCgtsv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, m, n, dl, d, du, B, ldb)
end

@checked function cusparseZgtsv(handle, m, n, dl, d, du, B, ldb)
    initialize_api()
    @runtime_ccall((:cusparseZgtsv, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    Cint),
                   handle, m, n, dl, d, du, B, ldb)
end

@checked function cusparseSgtsv2_bufferSizeExt(handle, m, n, dl, d, du, B, ldb,
                                               bufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSgtsv2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cfloat},
                    CuPtr{Cfloat}, CuPtr{Cfloat}, Cint, Ptr{Csize_t}),
                   handle, m, n, dl, d, du, B, ldb, bufferSizeInBytes)
end

@checked function cusparseDgtsv2_bufferSizeExt(handle, m, n, dl, d, du, B, ldb,
                                               bufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDgtsv2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, Cint, Ptr{Csize_t}),
                   handle, m, n, dl, d, du, B, ldb, bufferSizeInBytes)
end

@checked function cusparseCgtsv2_bufferSizeExt(handle, m, n, dl, d, du, B, ldb,
                                               bufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCgtsv2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, Cint, Ptr{Csize_t}),
                   handle, m, n, dl, d, du, B, ldb, bufferSizeInBytes)
end

@checked function cusparseZgtsv2_bufferSizeExt(handle, m, n, dl, d, du, B, ldb,
                                               bufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZgtsv2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    Cint, Ptr{Csize_t}),
                   handle, m, n, dl, d, du, B, ldb, bufferSizeInBytes)
end

@checked function cusparseSgtsv2(handle, m, n, dl, d, du, B, ldb, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSgtsv2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cfloat},
                    CuPtr{Cfloat}, CuPtr{Cfloat}, Cint, CuPtr{Cvoid}),
                   handle, m, n, dl, d, du, B, ldb, pBuffer)
end

@checked function cusparseDgtsv2(handle, m, n, dl, d, du, B, ldb, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDgtsv2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, Cint, CuPtr{Cvoid}),
                   handle, m, n, dl, d, du, B, ldb, pBuffer)
end

@checked function cusparseCgtsv2(handle, m, n, dl, d, du, B, ldb, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCgtsv2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, Cint, CuPtr{Cvoid}),
                   handle, m, n, dl, d, du, B, ldb, pBuffer)
end

@checked function cusparseZgtsv2(handle, m, n, dl, d, du, B, ldb, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZgtsv2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    Cint, CuPtr{Cvoid}),
                   handle, m, n, dl, d, du, B, ldb, pBuffer)
end

@checked function cusparseSgtsv_nopivot(handle, m, n, dl, d, du, B, ldb)
    initialize_api()
    @runtime_ccall((:cusparseSgtsv_nopivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cfloat},
                    CuPtr{Cfloat}, CuPtr{Cfloat}, Cint),
                   handle, m, n, dl, d, du, B, ldb)
end

@checked function cusparseDgtsv_nopivot(handle, m, n, dl, d, du, B, ldb)
    initialize_api()
    @runtime_ccall((:cusparseDgtsv_nopivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, Cint),
                   handle, m, n, dl, d, du, B, ldb)
end

@checked function cusparseCgtsv_nopivot(handle, m, n, dl, d, du, B, ldb)
    initialize_api()
    @runtime_ccall((:cusparseCgtsv_nopivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, Cint),
                   handle, m, n, dl, d, du, B, ldb)
end

@checked function cusparseZgtsv_nopivot(handle, m, n, dl, d, du, B, ldb)
    initialize_api()
    @runtime_ccall((:cusparseZgtsv_nopivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    Cint),
                   handle, m, n, dl, d, du, B, ldb)
end

@checked function cusparseSgtsv2_nopivot_bufferSizeExt(handle, m, n, dl, d, du, B, ldb,
                                                       bufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSgtsv2_nopivot_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cfloat},
                    CuPtr{Cfloat}, CuPtr{Cfloat}, Cint, Ptr{Csize_t}),
                   handle, m, n, dl, d, du, B, ldb, bufferSizeInBytes)
end

@checked function cusparseDgtsv2_nopivot_bufferSizeExt(handle, m, n, dl, d, du, B, ldb,
                                                       bufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDgtsv2_nopivot_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, Cint, Ptr{Csize_t}),
                   handle, m, n, dl, d, du, B, ldb, bufferSizeInBytes)
end

@checked function cusparseCgtsv2_nopivot_bufferSizeExt(handle, m, n, dl, d, du, B, ldb,
                                                       bufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCgtsv2_nopivot_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, Cint, Ptr{Csize_t}),
                   handle, m, n, dl, d, du, B, ldb, bufferSizeInBytes)
end

@checked function cusparseZgtsv2_nopivot_bufferSizeExt(handle, m, n, dl, d, du, B, ldb,
                                                       bufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZgtsv2_nopivot_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    Cint, Ptr{Csize_t}),
                   handle, m, n, dl, d, du, B, ldb, bufferSizeInBytes)
end

@checked function cusparseSgtsv2_nopivot(handle, m, n, dl, d, du, B, ldb, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSgtsv2_nopivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cfloat},
                    CuPtr{Cfloat}, CuPtr{Cfloat}, Cint, CuPtr{Cvoid}),
                   handle, m, n, dl, d, du, B, ldb, pBuffer)
end

@checked function cusparseDgtsv2_nopivot(handle, m, n, dl, d, du, B, ldb, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDgtsv2_nopivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, Cint, CuPtr{Cvoid}),
                   handle, m, n, dl, d, du, B, ldb, pBuffer)
end

@checked function cusparseCgtsv2_nopivot(handle, m, n, dl, d, du, B, ldb, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCgtsv2_nopivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, Cint, CuPtr{Cvoid}),
                   handle, m, n, dl, d, du, B, ldb, pBuffer)
end

@checked function cusparseZgtsv2_nopivot(handle, m, n, dl, d, du, B, ldb, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZgtsv2_nopivot, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    Cint, CuPtr{Cvoid}),
                   handle, m, n, dl, d, du, B, ldb, pBuffer)
end

@checked function cusparseSgtsvStridedBatch(handle, m, dl, d, du, x, batchCount, batchStride)
    initialize_api()
    @runtime_ccall((:cusparseSgtsvStridedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cfloat}, CuPtr{Cfloat}, CuPtr{Cfloat},
                    CuPtr{Cfloat}, Cint, Cint),
                   handle, m, dl, d, du, x, batchCount, batchStride)
end

@checked function cusparseDgtsvStridedBatch(handle, m, dl, d, du, x, batchCount, batchStride)
    initialize_api()
    @runtime_ccall((:cusparseDgtsvStridedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cdouble}, CuPtr{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, Cint, Cint),
                   handle, m, dl, d, du, x, batchCount, batchStride)
end

@checked function cusparseCgtsvStridedBatch(handle, m, dl, d, du, x, batchCount, batchStride)
    initialize_api()
    @runtime_ccall((:cusparseCgtsvStridedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, Cint, Cint),
                   handle, m, dl, d, du, x, batchCount, batchStride)
end

@checked function cusparseZgtsvStridedBatch(handle, m, dl, d, du, x, batchCount, batchStride)
    initialize_api()
    @runtime_ccall((:cusparseZgtsvStridedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    Cint, Cint),
                   handle, m, dl, d, du, x, batchCount, batchStride)
end

@checked function cusparseSgtsv2StridedBatch_bufferSizeExt(handle, m, dl, d, du, x,
                                                           batchCount, batchStride,
                                                           bufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSgtsv2StridedBatch_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cfloat}, CuPtr{Cfloat}, CuPtr{Cfloat},
                    CuPtr{Cfloat}, Cint, Cint, Ptr{Csize_t}),
                   handle, m, dl, d, du, x, batchCount, batchStride, bufferSizeInBytes)
end

@checked function cusparseDgtsv2StridedBatch_bufferSizeExt(handle, m, dl, d, du, x,
                                                           batchCount, batchStride,
                                                           bufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDgtsv2StridedBatch_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cdouble}, CuPtr{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, Cint, Cint, Ptr{Csize_t}),
                   handle, m, dl, d, du, x, batchCount, batchStride, bufferSizeInBytes)
end

@checked function cusparseCgtsv2StridedBatch_bufferSizeExt(handle, m, dl, d, du, x,
                                                           batchCount, batchStride,
                                                           bufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCgtsv2StridedBatch_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, Cint, Cint, Ptr{Csize_t}),
                   handle, m, dl, d, du, x, batchCount, batchStride, bufferSizeInBytes)
end

@checked function cusparseZgtsv2StridedBatch_bufferSizeExt(handle, m, dl, d, du, x,
                                                           batchCount, batchStride,
                                                           bufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZgtsv2StridedBatch_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    Cint, Cint, Ptr{Csize_t}),
                   handle, m, dl, d, du, x, batchCount, batchStride, bufferSizeInBytes)
end

@checked function cusparseSgtsv2StridedBatch(handle, m, dl, d, du, x, batchCount,
                                             batchStride, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSgtsv2StridedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cfloat}, CuPtr{Cfloat}, CuPtr{Cfloat},
                    CuPtr{Cfloat}, Cint, Cint, CuPtr{Cvoid}),
                   handle, m, dl, d, du, x, batchCount, batchStride, pBuffer)
end

@checked function cusparseDgtsv2StridedBatch(handle, m, dl, d, du, x, batchCount,
                                             batchStride, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDgtsv2StridedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cdouble}, CuPtr{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, Cint, Cint, CuPtr{Cvoid}),
                   handle, m, dl, d, du, x, batchCount, batchStride, pBuffer)
end

@checked function cusparseCgtsv2StridedBatch(handle, m, dl, d, du, x, batchCount,
                                             batchStride, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCgtsv2StridedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, Cint, Cint, CuPtr{Cvoid}),
                   handle, m, dl, d, du, x, batchCount, batchStride, pBuffer)
end

@checked function cusparseZgtsv2StridedBatch(handle, m, dl, d, du, x, batchCount,
                                             batchStride, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZgtsv2StridedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    Cint, Cint, CuPtr{Cvoid}),
                   handle, m, dl, d, du, x, batchCount, batchStride, pBuffer)
end

@checked function cusparseSgtsvInterleavedBatch_bufferSizeExt(handle, algo, m, dl, d, du,
                                                              x, batchCount,
                                                              pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSgtsvInterleavedBatch_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cfloat},
                    CuPtr{Cfloat}, CuPtr{Cfloat}, Cint, Ptr{Csize_t}),
                   handle, algo, m, dl, d, du, x, batchCount, pBufferSizeInBytes)
end

@checked function cusparseDgtsvInterleavedBatch_bufferSizeExt(handle, algo, m, dl, d, du,
                                                              x, batchCount,
                                                              pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDgtsvInterleavedBatch_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, Cint, Ptr{Csize_t}),
                   handle, algo, m, dl, d, du, x, batchCount, pBufferSizeInBytes)
end

@checked function cusparseCgtsvInterleavedBatch_bufferSizeExt(handle, algo, m, dl, d, du,
                                                              x, batchCount,
                                                              pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCgtsvInterleavedBatch_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, Cint, Ptr{Csize_t}),
                   handle, algo, m, dl, d, du, x, batchCount, pBufferSizeInBytes)
end

@checked function cusparseZgtsvInterleavedBatch_bufferSizeExt(handle, algo, m, dl, d, du,
                                                              x, batchCount,
                                                              pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZgtsvInterleavedBatch_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    Cint, Ptr{Csize_t}),
                   handle, algo, m, dl, d, du, x, batchCount, pBufferSizeInBytes)
end

@checked function cusparseSgtsvInterleavedBatch(handle, algo, m, dl, d, du, x, batchCount,
                                                pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSgtsvInterleavedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cfloat},
                    CuPtr{Cfloat}, CuPtr{Cfloat}, Cint, CuPtr{Cvoid}),
                   handle, algo, m, dl, d, du, x, batchCount, pBuffer)
end

@checked function cusparseDgtsvInterleavedBatch(handle, algo, m, dl, d, du, x, batchCount,
                                                pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDgtsvInterleavedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, Cint, CuPtr{Cvoid}),
                   handle, algo, m, dl, d, du, x, batchCount, pBuffer)
end

@checked function cusparseCgtsvInterleavedBatch(handle, algo, m, dl, d, du, x, batchCount,
                                                pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCgtsvInterleavedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, Cint, CuPtr{Cvoid}),
                   handle, algo, m, dl, d, du, x, batchCount, pBuffer)
end

@checked function cusparseZgtsvInterleavedBatch(handle, algo, m, dl, d, du, x, batchCount,
                                                pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZgtsvInterleavedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    Cint, CuPtr{Cvoid}),
                   handle, algo, m, dl, d, du, x, batchCount, pBuffer)
end

@checked function cusparseSgpsvInterleavedBatch_bufferSizeExt(handle, algo, m, ds, dl, d,
                                                              du, dw, x, batchCount,
                                                              pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSgpsvInterleavedBatch_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cfloat},
                    CuPtr{Cfloat}, CuPtr{Cfloat}, CuPtr{Cfloat}, CuPtr{Cfloat}, Cint,
                    Ptr{Csize_t}),
                   handle, algo, m, ds, dl, d, du, dw, x, batchCount, pBufferSizeInBytes)
end

@checked function cusparseDgpsvInterleavedBatch_bufferSizeExt(handle, algo, m, ds, dl, d,
                                                              du, dw, x, batchCount,
                                                              pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDgpsvInterleavedBatch_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, CuPtr{Cdouble}, CuPtr{Cdouble}, Cint,
                    Ptr{Csize_t}),
                   handle, algo, m, ds, dl, d, du, dw, x, batchCount, pBufferSizeInBytes)
end

@checked function cusparseCgpsvInterleavedBatch_bufferSizeExt(handle, algo, m, ds, dl, d,
                                                              du, dw, x, batchCount,
                                                              pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCgpsvInterleavedBatch_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, CuPtr{cuComplex}, CuPtr{cuComplex},
                    Cint, Ptr{Csize_t}),
                   handle, algo, m, ds, dl, d, du, dw, x, batchCount, pBufferSizeInBytes)
end

@checked function cusparseZgpsvInterleavedBatch_bufferSizeExt(handle, algo, m, ds, dl, d,
                                                              du, dw, x, batchCount,
                                                              pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZgpsvInterleavedBatch_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint, Ptr{Csize_t}),
                   handle, algo, m, ds, dl, d, du, dw, x, batchCount, pBufferSizeInBytes)
end

@checked function cusparseSgpsvInterleavedBatch(handle, algo, m, ds, dl, d, du, dw, x,
                                                batchCount, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSgpsvInterleavedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cfloat},
                    CuPtr{Cfloat}, CuPtr{Cfloat}, CuPtr{Cfloat}, CuPtr{Cfloat}, Cint,
                    CuPtr{Cvoid}),
                   handle, algo, m, ds, dl, d, du, dw, x, batchCount, pBuffer)
end

@checked function cusparseDgpsvInterleavedBatch(handle, algo, m, ds, dl, d, du, dw, x,
                                                batchCount, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDgpsvInterleavedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cdouble},
                    CuPtr{Cdouble}, CuPtr{Cdouble}, CuPtr{Cdouble}, CuPtr{Cdouble}, Cint,
                    CuPtr{Cvoid}),
                   handle, algo, m, ds, dl, d, du, dw, x, batchCount, pBuffer)
end

@checked function cusparseCgpsvInterleavedBatch(handle, algo, m, ds, dl, d, du, dw, x,
                                                batchCount, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCgpsvInterleavedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuComplex}, CuPtr{cuComplex},
                    CuPtr{cuComplex}, CuPtr{cuComplex}, CuPtr{cuComplex}, CuPtr{cuComplex},
                    Cint, CuPtr{Cvoid}),
                   handle, algo, m, ds, dl, d, du, dw, x, batchCount, pBuffer)
end

@checked function cusparseZgpsvInterleavedBatch(handle, algo, m, ds, dl, d, du, dw, x,
                                                batchCount, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZgpsvInterleavedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex},
                    CuPtr{cuDoubleComplex}, CuPtr{cuDoubleComplex}, Cint, CuPtr{Cvoid}),
                   handle, algo, m, ds, dl, d, du, dw, x, batchCount, pBuffer)
end

@checked function cusparseXcsrgemmNnz(handle, transA, transB, m, n, k, descrA, nnzA,
                                      csrSortedRowPtrA, csrSortedColIndA, descrB, nnzB,
                                      csrSortedRowPtrB, csrSortedColIndB, descrC,
                                      csrSortedRowPtrC, nnzTotalDevHostPtr)
    initialize_api()
    @runtime_ccall((:cusparseXcsrgemmNnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseOperation_t, Cint,
                    Cint, Cint, cusparseMatDescr_t, Cint, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, Cint, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t,
                    CuPtr{Cint}, PtrOrCuPtr{Cint}),
                   handle, transA, transB, m, n, k, descrA, nnzA, csrSortedRowPtrA,
                   csrSortedColIndA, descrB, nnzB, csrSortedRowPtrB, csrSortedColIndB,
                   descrC, csrSortedRowPtrC, nnzTotalDevHostPtr)
end

@checked function cusparseScsrgemm(handle, transA, transB, m, n, k, descrA, nnzA,
                                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                                   descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                                   csrSortedColIndB, descrC, csrSortedValC,
                                   csrSortedRowPtrC, csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseScsrgemm, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseOperation_t, Cint,
                    Cint, Cint, cusparseMatDescr_t, Cint, CuPtr{Cfloat}, CuPtr{Cint},
                    CuPtr{Cint}, cusparseMatDescr_t, Cint, CuPtr{Cfloat}, CuPtr{Cint},
                    CuPtr{Cint}, cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint},
                    CuPtr{Cint}),
                   handle, transA, transB, m, n, k, descrA, nnzA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, descrB, nnzB, csrSortedValB,
                   csrSortedRowPtrB, csrSortedColIndB, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC)
end

@checked function cusparseDcsrgemm(handle, transA, transB, m, n, k, descrA, nnzA,
                                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                                   descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                                   csrSortedColIndB, descrC, csrSortedValC,
                                   csrSortedRowPtrC, csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseDcsrgemm, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseOperation_t, Cint,
                    Cint, Cint, cusparseMatDescr_t, Cint, CuPtr{Cdouble}, CuPtr{Cint},
                    CuPtr{Cint}, cusparseMatDescr_t, Cint, CuPtr{Cdouble}, CuPtr{Cint},
                    CuPtr{Cint}, cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint},
                    CuPtr{Cint}),
                   handle, transA, transB, m, n, k, descrA, nnzA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, descrB, nnzB, csrSortedValB,
                   csrSortedRowPtrB, csrSortedColIndB, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC)
end

@checked function cusparseCcsrgemm(handle, transA, transB, m, n, k, descrA, nnzA,
                                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                                   descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                                   csrSortedColIndB, descrC, csrSortedValC,
                                   csrSortedRowPtrC, csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseCcsrgemm, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseOperation_t, Cint,
                    Cint, Cint, cusparseMatDescr_t, Cint, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{Cint}, cusparseMatDescr_t, Cint, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{Cint}, cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{Cint}),
                   handle, transA, transB, m, n, k, descrA, nnzA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, descrB, nnzB, csrSortedValB,
                   csrSortedRowPtrB, csrSortedColIndB, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC)
end

@checked function cusparseZcsrgemm(handle, transA, transB, m, n, k, descrA, nnzA,
                                   csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                                   descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                                   csrSortedColIndB, descrC, csrSortedValC,
                                   csrSortedRowPtrC, csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseZcsrgemm, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseOperation_t, Cint,
                    Cint, Cint, cusparseMatDescr_t, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t, Cint,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, transA, transB, m, n, k, descrA, nnzA, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA, descrB, nnzB, csrSortedValB,
                   csrSortedRowPtrB, csrSortedColIndB, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC)
end

@checked function cusparseCreateCsrgemm2Info(info)
    initialize_api()
    @runtime_ccall((:cusparseCreateCsrgemm2Info, libcusparse()), cusparseStatus_t,
                   (Ptr{csrgemm2Info_t},),
                   info)
end

@checked function cusparseDestroyCsrgemm2Info(info)
    initialize_api()
    @runtime_ccall((:cusparseDestroyCsrgemm2Info, libcusparse()), cusparseStatus_t,
                   (csrgemm2Info_t,),
                   info)
end

@checked function cusparseScsrgemm2_bufferSizeExt(handle, m, n, k, alpha, descrA, nnzA,
                                                  csrSortedRowPtrA, csrSortedColIndA,
                                                  descrB, nnzB, csrSortedRowPtrB,
                                                  csrSortedColIndB, beta, descrD, nnzD,
                                                  csrSortedRowPtrD, csrSortedColIndD, info,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseScsrgemm2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, Ptr{Cfloat}, cusparseMatDescr_t,
                    Cint, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t, Cint, CuPtr{Cint},
                    CuPtr{Cint}, Ptr{Cfloat}, cusparseMatDescr_t, Cint, CuPtr{Cint},
                    CuPtr{Cint}, csrgemm2Info_t, Ptr{Csize_t}),
                   handle, m, n, k, alpha, descrA, nnzA, csrSortedRowPtrA,
                   csrSortedColIndA, descrB, nnzB, csrSortedRowPtrB, csrSortedColIndB,
                   beta, descrD, nnzD, csrSortedRowPtrD, csrSortedColIndD, info,
                   pBufferSizeInBytes)
end

@checked function cusparseDcsrgemm2_bufferSizeExt(handle, m, n, k, alpha, descrA, nnzA,
                                                  csrSortedRowPtrA, csrSortedColIndA,
                                                  descrB, nnzB, csrSortedRowPtrB,
                                                  csrSortedColIndB, beta, descrD, nnzD,
                                                  csrSortedRowPtrD, csrSortedColIndD, info,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDcsrgemm2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, Ptr{Cdouble}, cusparseMatDescr_t,
                    Cint, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t, Cint, CuPtr{Cint},
                    CuPtr{Cint}, Ptr{Cdouble}, cusparseMatDescr_t, Cint, CuPtr{Cint},
                    CuPtr{Cint}, csrgemm2Info_t, Ptr{Csize_t}),
                   handle, m, n, k, alpha, descrA, nnzA, csrSortedRowPtrA,
                   csrSortedColIndA, descrB, nnzB, csrSortedRowPtrB, csrSortedColIndB,
                   beta, descrD, nnzD, csrSortedRowPtrD, csrSortedColIndD, info,
                   pBufferSizeInBytes)
end

@checked function cusparseCcsrgemm2_bufferSizeExt(handle, m, n, k, alpha, descrA, nnzA,
                                                  csrSortedRowPtrA, csrSortedColIndA,
                                                  descrB, nnzB, csrSortedRowPtrB,
                                                  csrSortedColIndB, beta, descrD, nnzD,
                                                  csrSortedRowPtrD, csrSortedColIndD, info,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCcsrgemm2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, Ptr{cuComplex},
                    cusparseMatDescr_t, Cint, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t,
                    Cint, CuPtr{Cint}, CuPtr{Cint}, Ptr{cuComplex}, cusparseMatDescr_t,
                    Cint, CuPtr{Cint}, CuPtr{Cint}, csrgemm2Info_t, Ptr{Csize_t}),
                   handle, m, n, k, alpha, descrA, nnzA, csrSortedRowPtrA,
                   csrSortedColIndA, descrB, nnzB, csrSortedRowPtrB, csrSortedColIndB,
                   beta, descrD, nnzD, csrSortedRowPtrD, csrSortedColIndD, info,
                   pBufferSizeInBytes)
end

@checked function cusparseZcsrgemm2_bufferSizeExt(handle, m, n, k, alpha, descrA, nnzA,
                                                  csrSortedRowPtrA, csrSortedColIndA,
                                                  descrB, nnzB, csrSortedRowPtrB,
                                                  csrSortedColIndB, beta, descrD, nnzD,
                                                  csrSortedRowPtrD, csrSortedColIndD, info,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZcsrgemm2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, Ptr{cuDoubleComplex},
                    cusparseMatDescr_t, Cint, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t,
                    Cint, CuPtr{Cint}, CuPtr{Cint}, Ptr{cuDoubleComplex},
                    cusparseMatDescr_t, Cint, CuPtr{Cint}, CuPtr{Cint}, csrgemm2Info_t,
                    Ptr{Csize_t}),
                   handle, m, n, k, alpha, descrA, nnzA, csrSortedRowPtrA,
                   csrSortedColIndA, descrB, nnzB, csrSortedRowPtrB, csrSortedColIndB,
                   beta, descrD, nnzD, csrSortedRowPtrD, csrSortedColIndD, info,
                   pBufferSizeInBytes)
end

@checked function cusparseXcsrgemm2Nnz(handle, m, n, k, descrA, nnzA, csrSortedRowPtrA,
                                       csrSortedColIndA, descrB, nnzB, csrSortedRowPtrB,
                                       csrSortedColIndB, descrD, nnzD, csrSortedRowPtrD,
                                       csrSortedColIndD, descrC, csrSortedRowPtrC,
                                       nnzTotalDevHostPtr, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseXcsrgemm2Nnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t, Cint,
                    CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t, Cint, CuPtr{Cint},
                    CuPtr{Cint}, cusparseMatDescr_t, Cint, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{Cint}, PtrOrCuPtr{Cint}, csrgemm2Info_t,
                    CuPtr{Cvoid}),
                   handle, m, n, k, descrA, nnzA, csrSortedRowPtrA, csrSortedColIndA,
                   descrB, nnzB, csrSortedRowPtrB, csrSortedColIndB, descrD, nnzD,
                   csrSortedRowPtrD, csrSortedColIndD, descrC, csrSortedRowPtrC,
                   nnzTotalDevHostPtr, info, pBuffer)
end

@checked function cusparseScsrgemm2(handle, m, n, k, alpha, descrA, nnzA, csrSortedValA,
                                    csrSortedRowPtrA, csrSortedColIndA, descrB, nnzB,
                                    csrSortedValB, csrSortedRowPtrB, csrSortedColIndB,
                                    beta, descrD, nnzD, csrSortedValD, csrSortedRowPtrD,
                                    csrSortedColIndD, descrC, csrSortedValC,
                                    csrSortedRowPtrC, csrSortedColIndC, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseScsrgemm2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, Ptr{Cfloat}, cusparseMatDescr_t,
                    Cint, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t,
                    Cint, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Cfloat},
                    cusparseMatDescr_t, Cint, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    csrgemm2Info_t, CuPtr{Cvoid}),
                   handle, m, n, k, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, beta, descrD, nnzD, csrSortedValD, csrSortedRowPtrD,
                   csrSortedColIndD, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, info, pBuffer)
end

@checked function cusparseDcsrgemm2(handle, m, n, k, alpha, descrA, nnzA, csrSortedValA,
                                    csrSortedRowPtrA, csrSortedColIndA, descrB, nnzB,
                                    csrSortedValB, csrSortedRowPtrB, csrSortedColIndB,
                                    beta, descrD, nnzD, csrSortedValD, csrSortedRowPtrD,
                                    csrSortedColIndD, descrC, csrSortedValC,
                                    csrSortedRowPtrC, csrSortedColIndC, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDcsrgemm2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, Ptr{Cdouble}, cusparseMatDescr_t,
                    Cint, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t,
                    Cint, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Cdouble},
                    cusparseMatDescr_t, Cint, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    csrgemm2Info_t, CuPtr{Cvoid}),
                   handle, m, n, k, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, beta, descrD, nnzD, csrSortedValD, csrSortedRowPtrD,
                   csrSortedColIndD, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, info, pBuffer)
end

@checked function cusparseCcsrgemm2(handle, m, n, k, alpha, descrA, nnzA, csrSortedValA,
                                    csrSortedRowPtrA, csrSortedColIndA, descrB, nnzB,
                                    csrSortedValB, csrSortedRowPtrB, csrSortedColIndB,
                                    beta, descrD, nnzD, csrSortedValD, csrSortedRowPtrD,
                                    csrSortedColIndD, descrC, csrSortedValC,
                                    csrSortedRowPtrC, csrSortedColIndC, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCcsrgemm2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, Ptr{cuComplex},
                    cusparseMatDescr_t, Cint, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, Cint, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    Ptr{cuComplex}, cusparseMatDescr_t, Cint, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, csrgemm2Info_t, CuPtr{Cvoid}),
                   handle, m, n, k, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, beta, descrD, nnzD, csrSortedValD, csrSortedRowPtrD,
                   csrSortedColIndD, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, info, pBuffer)
end

@checked function cusparseZcsrgemm2(handle, m, n, k, alpha, descrA, nnzA, csrSortedValA,
                                    csrSortedRowPtrA, csrSortedColIndA, descrB, nnzB,
                                    csrSortedValB, csrSortedRowPtrB, csrSortedColIndB,
                                    beta, descrD, nnzD, csrSortedValD, csrSortedRowPtrD,
                                    csrSortedColIndD, descrC, csrSortedValC,
                                    csrSortedRowPtrC, csrSortedColIndC, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZcsrgemm2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, Ptr{cuDoubleComplex},
                    cusparseMatDescr_t, Cint, CuPtr{cuDoubleComplex}, CuPtr{Cint},
                    CuPtr{Cint}, cusparseMatDescr_t, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, Ptr{cuDoubleComplex}, cusparseMatDescr_t,
                    Cint, CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    csrgemm2Info_t, CuPtr{Cvoid}),
                   handle, m, n, k, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, beta, descrD, nnzD, csrSortedValD, csrSortedRowPtrD,
                   csrSortedColIndD, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, info, pBuffer)
end

@checked function cusparseXcsrgeamNnz(handle, m, n, descrA, nnzA, csrSortedRowPtrA,
                                      csrSortedColIndA, descrB, nnzB, csrSortedRowPtrB,
                                      csrSortedColIndB, descrC, csrSortedRowPtrC,
                                      nnzTotalDevHostPtr)
    initialize_api()
    @runtime_ccall((:cusparseXcsrgeamNnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, Cint, CuPtr{Cint},
                    CuPtr{Cint}, cusparseMatDescr_t, Cint, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{Cint}, PtrOrCuPtr{Cint}),
                   handle, m, n, descrA, nnzA, csrSortedRowPtrA, csrSortedColIndA, descrB,
                   nnzB, csrSortedRowPtrB, csrSortedColIndB, descrC, csrSortedRowPtrC,
                   nnzTotalDevHostPtr)
end

@checked function cusparseScsrgeam(handle, m, n, alpha, descrA, nnzA, csrSortedValA,
                                   csrSortedRowPtrA, csrSortedColIndA, beta, descrB, nnzB,
                                   csrSortedValB, csrSortedRowPtrB, csrSortedColIndB,
                                   descrC, csrSortedValC, csrSortedRowPtrC, csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseScsrgeam, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Ptr{Cfloat}, cusparseMatDescr_t, Cint,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Cfloat},
                    cusparseMatDescr_t, Cint, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, m, n, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, beta, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC)
end

@checked function cusparseDcsrgeam(handle, m, n, alpha, descrA, nnzA, csrSortedValA,
                                   csrSortedRowPtrA, csrSortedColIndA, beta, descrB, nnzB,
                                   csrSortedValB, csrSortedRowPtrB, csrSortedColIndB,
                                   descrC, csrSortedValC, csrSortedRowPtrC, csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseDcsrgeam, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Ptr{Cdouble}, cusparseMatDescr_t, Cint,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Cdouble},
                    cusparseMatDescr_t, Cint, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, m, n, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, beta, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC)
end

@checked function cusparseCcsrgeam(handle, m, n, alpha, descrA, nnzA, csrSortedValA,
                                   csrSortedRowPtrA, csrSortedColIndA, beta, descrB, nnzB,
                                   csrSortedValB, csrSortedRowPtrB, csrSortedColIndB,
                                   descrC, csrSortedValC, csrSortedRowPtrC, csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseCcsrgeam, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Ptr{cuComplex}, cusparseMatDescr_t,
                    Cint, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Ptr{cuComplex},
                    cusparseMatDescr_t, Cint, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, m, n, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, beta, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC)
end

@checked function cusparseZcsrgeam(handle, m, n, alpha, descrA, nnzA, csrSortedValA,
                                   csrSortedRowPtrA, csrSortedColIndA, beta, descrB, nnzB,
                                   csrSortedValB, csrSortedRowPtrB, csrSortedColIndB,
                                   descrC, csrSortedValC, csrSortedRowPtrC, csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseZcsrgeam, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Ptr{cuDoubleComplex},
                    cusparseMatDescr_t, Cint, CuPtr{cuDoubleComplex}, CuPtr{Cint},
                    CuPtr{Cint}, Ptr{cuDoubleComplex}, cusparseMatDescr_t, Cint,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, m, n, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, beta, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC)
end

@checked function cusparseScsrgeam2_bufferSizeExt(handle, m, n, alpha, descrA, nnzA,
                                                  csrSortedValA, csrSortedRowPtrA,
                                                  csrSortedColIndA, beta, descrB, nnzB,
                                                  csrSortedValB, csrSortedRowPtrB,
                                                  csrSortedColIndB, descrC, csrSortedValC,
                                                  csrSortedRowPtrC, csrSortedColIndC,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseScsrgeam2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Ptr{Cfloat}, cusparseMatDescr_t, Cint,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Cfloat},
                    cusparseMatDescr_t, Cint, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    Ptr{Csize_t}),
                   handle, m, n, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, beta, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, pBufferSizeInBytes)
end

@checked function cusparseDcsrgeam2_bufferSizeExt(handle, m, n, alpha, descrA, nnzA,
                                                  csrSortedValA, csrSortedRowPtrA,
                                                  csrSortedColIndA, beta, descrB, nnzB,
                                                  csrSortedValB, csrSortedRowPtrB,
                                                  csrSortedColIndB, descrC, csrSortedValC,
                                                  csrSortedRowPtrC, csrSortedColIndC,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDcsrgeam2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Ptr{Cdouble}, cusparseMatDescr_t, Cint,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Cdouble},
                    cusparseMatDescr_t, Cint, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    Ptr{Csize_t}),
                   handle, m, n, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, beta, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, pBufferSizeInBytes)
end

@checked function cusparseCcsrgeam2_bufferSizeExt(handle, m, n, alpha, descrA, nnzA,
                                                  csrSortedValA, csrSortedRowPtrA,
                                                  csrSortedColIndA, beta, descrB, nnzB,
                                                  csrSortedValB, csrSortedRowPtrB,
                                                  csrSortedColIndB, descrC, csrSortedValC,
                                                  csrSortedRowPtrC, csrSortedColIndC,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCcsrgeam2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Ptr{cuComplex}, cusparseMatDescr_t,
                    Cint, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Ptr{cuComplex},
                    cusparseMatDescr_t, Cint, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    Ptr{Csize_t}),
                   handle, m, n, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, beta, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, pBufferSizeInBytes)
end

@checked function cusparseZcsrgeam2_bufferSizeExt(handle, m, n, alpha, descrA, nnzA,
                                                  csrSortedValA, csrSortedRowPtrA,
                                                  csrSortedColIndA, beta, descrB, nnzB,
                                                  csrSortedValB, csrSortedRowPtrB,
                                                  csrSortedColIndB, descrC, csrSortedValC,
                                                  csrSortedRowPtrC, csrSortedColIndC,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZcsrgeam2_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Ptr{cuDoubleComplex},
                    cusparseMatDescr_t, Cint, CuPtr{cuDoubleComplex}, CuPtr{Cint},
                    CuPtr{Cint}, Ptr{cuDoubleComplex}, cusparseMatDescr_t, Cint,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Csize_t}),
                   handle, m, n, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, beta, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, pBufferSizeInBytes)
end

@checked function cusparseXcsrgeam2Nnz(handle, m, n, descrA, nnzA, csrSortedRowPtrA,
                                       csrSortedColIndA, descrB, nnzB, csrSortedRowPtrB,
                                       csrSortedColIndB, descrC, csrSortedRowPtrC,
                                       nnzTotalDevHostPtr, workspace)
    initialize_api()
    @runtime_ccall((:cusparseXcsrgeam2Nnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, Cint, CuPtr{Cint},
                    CuPtr{Cint}, cusparseMatDescr_t, Cint, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{Cint}, PtrOrCuPtr{Cint}, CuPtr{Cvoid}),
                   handle, m, n, descrA, nnzA, csrSortedRowPtrA, csrSortedColIndA, descrB,
                   nnzB, csrSortedRowPtrB, csrSortedColIndB, descrC, csrSortedRowPtrC,
                   nnzTotalDevHostPtr, workspace)
end

@checked function cusparseScsrgeam2(handle, m, n, alpha, descrA, nnzA, csrSortedValA,
                                    csrSortedRowPtrA, csrSortedColIndA, beta, descrB, nnzB,
                                    csrSortedValB, csrSortedRowPtrB, csrSortedColIndB,
                                    descrC, csrSortedValC, csrSortedRowPtrC,
                                    csrSortedColIndC, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseScsrgeam2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Ptr{Cfloat}, cusparseMatDescr_t, Cint,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Cfloat},
                    cusparseMatDescr_t, Cint, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{Cvoid}),
                   handle, m, n, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, beta, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, pBuffer)
end

@checked function cusparseDcsrgeam2(handle, m, n, alpha, descrA, nnzA, csrSortedValA,
                                    csrSortedRowPtrA, csrSortedColIndA, beta, descrB, nnzB,
                                    csrSortedValB, csrSortedRowPtrB, csrSortedColIndB,
                                    descrC, csrSortedValC, csrSortedRowPtrC,
                                    csrSortedColIndC, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDcsrgeam2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Ptr{Cdouble}, cusparseMatDescr_t, Cint,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Cdouble},
                    cusparseMatDescr_t, Cint, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{Cvoid}),
                   handle, m, n, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, beta, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, pBuffer)
end

@checked function cusparseCcsrgeam2(handle, m, n, alpha, descrA, nnzA, csrSortedValA,
                                    csrSortedRowPtrA, csrSortedColIndA, beta, descrB, nnzB,
                                    csrSortedValB, csrSortedRowPtrB, csrSortedColIndB,
                                    descrC, csrSortedValC, csrSortedRowPtrC,
                                    csrSortedColIndC, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCcsrgeam2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Ptr{cuComplex}, cusparseMatDescr_t,
                    Cint, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Ptr{cuComplex},
                    cusparseMatDescr_t, Cint, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{Cvoid}),
                   handle, m, n, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, beta, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, pBuffer)
end

@checked function cusparseZcsrgeam2(handle, m, n, alpha, descrA, nnzA, csrSortedValA,
                                    csrSortedRowPtrA, csrSortedColIndA, beta, descrB, nnzB,
                                    csrSortedValB, csrSortedRowPtrB, csrSortedColIndB,
                                    descrC, csrSortedValC, csrSortedRowPtrC,
                                    csrSortedColIndC, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZcsrgeam2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Ptr{cuDoubleComplex},
                    cusparseMatDescr_t, Cint, CuPtr{cuDoubleComplex}, CuPtr{Cint},
                    CuPtr{Cint}, Ptr{cuDoubleComplex}, cusparseMatDescr_t, Cint,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cvoid}),
                   handle, m, n, alpha, descrA, nnzA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, beta, descrB, nnzB, csrSortedValB, csrSortedRowPtrB,
                   csrSortedColIndB, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, pBuffer)
end

@checked function cusparseScsrcolor(handle, m, nnz, descrA, csrSortedValA,
                                    csrSortedRowPtrA, csrSortedColIndA, fractionToColor,
                                    ncolors, coloring, reordering, info)
    initialize_api()
    @runtime_ccall((:cusparseScsrcolor, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, Ptr{Cfloat}, Ptr{Cint}, CuPtr{Cint},
                    CuPtr{Cint}, cusparseColorInfo_t),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, fractionToColor, ncolors, coloring, reordering, info)
end

@checked function cusparseDcsrcolor(handle, m, nnz, descrA, csrSortedValA,
                                    csrSortedRowPtrA, csrSortedColIndA, fractionToColor,
                                    ncolors, coloring, reordering, info)
    initialize_api()
    @runtime_ccall((:cusparseDcsrcolor, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, Ptr{Cdouble}, Ptr{Cint}, CuPtr{Cint},
                    CuPtr{Cint}, cusparseColorInfo_t),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, fractionToColor, ncolors, coloring, reordering, info)
end

@checked function cusparseCcsrcolor(handle, m, nnz, descrA, csrSortedValA,
                                    csrSortedRowPtrA, csrSortedColIndA, fractionToColor,
                                    ncolors, coloring, reordering, info)
    initialize_api()
    @runtime_ccall((:cusparseCcsrcolor, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, Ptr{Cfloat}, Ptr{Cint}, CuPtr{Cint},
                    CuPtr{Cint}, cusparseColorInfo_t),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, fractionToColor, ncolors, coloring, reordering, info)
end

@checked function cusparseZcsrcolor(handle, m, nnz, descrA, csrSortedValA,
                                    csrSortedRowPtrA, csrSortedColIndA, fractionToColor,
                                    ncolors, coloring, reordering, info)
    initialize_api()
    @runtime_ccall((:cusparseZcsrcolor, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Cdouble},
                    Ptr{Cint}, CuPtr{Cint}, CuPtr{Cint}, cusparseColorInfo_t),
                   handle, m, nnz, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, fractionToColor, ncolors, coloring, reordering, info)
end

@checked function cusparseSnnz(handle, dirA, m, n, descrA, A, lda, nnzPerRowCol,
                               nnzTotalDevHostPtr)
    initialize_api()
    @runtime_ccall((:cusparseSnnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, Cint, CuPtr{Cint}, PtrOrCuPtr{Cint}),
                   handle, dirA, m, n, descrA, A, lda, nnzPerRowCol, nnzTotalDevHostPtr)
end

@checked function cusparseDnnz(handle, dirA, m, n, descrA, A, lda, nnzPerRowCol,
                               nnzTotalDevHostPtr)
    initialize_api()
    @runtime_ccall((:cusparseDnnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, Cint, CuPtr{Cint}, PtrOrCuPtr{Cint}),
                   handle, dirA, m, n, descrA, A, lda, nnzPerRowCol, nnzTotalDevHostPtr)
end

@checked function cusparseCnnz(handle, dirA, m, n, descrA, A, lda, nnzPerRowCol,
                               nnzTotalDevHostPtr)
    initialize_api()
    @runtime_ccall((:cusparseCnnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, Cint, CuPtr{Cint}, PtrOrCuPtr{Cint}),
                   handle, dirA, m, n, descrA, A, lda, nnzPerRowCol, nnzTotalDevHostPtr)
end

@checked function cusparseZnnz(handle, dirA, m, n, descrA, A, lda, nnzPerRowCol,
                               nnzTotalDevHostPtr)
    initialize_api()
    @runtime_ccall((:cusparseZnnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{Cint}, PtrOrCuPtr{Cint}),
                   handle, dirA, m, n, descrA, A, lda, nnzPerRowCol, nnzTotalDevHostPtr)
end

@checked function cusparseSnnz_compress(handle, m, descr, csrSortedValA, csrSortedRowPtrA,
                                        nnzPerRow, nnzC, tol)
    initialize_api()
    @runtime_ccall((:cusparseSnnz_compress, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, PtrOrCuPtr{Cint}, Cfloat),
                   handle, m, descr, csrSortedValA, csrSortedRowPtrA, nnzPerRow, nnzC, tol)
end

@checked function cusparseDnnz_compress(handle, m, descr, csrSortedValA, csrSortedRowPtrA,
                                        nnzPerRow, nnzC, tol)
    initialize_api()
    @runtime_ccall((:cusparseDnnz_compress, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, PtrOrCuPtr{Cint}, Cdouble),
                   handle, m, descr, csrSortedValA, csrSortedRowPtrA, nnzPerRow, nnzC, tol)
end

@checked function cusparseCnnz_compress(handle, m, descr, csrSortedValA, csrSortedRowPtrA,
                                        nnzPerRow, nnzC, tol)
    initialize_api()
    @runtime_ccall((:cusparseCnnz_compress, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, PtrOrCuPtr{Cint}, cuComplex),
                   handle, m, descr, csrSortedValA, csrSortedRowPtrA, nnzPerRow, nnzC, tol)
end

@checked function cusparseZnnz_compress(handle, m, descr, csrSortedValA, csrSortedRowPtrA,
                                        nnzPerRow, nnzC, tol)
    initialize_api()
    @runtime_ccall((:cusparseZnnz_compress, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, cusparseMatDescr_t, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, PtrOrCuPtr{Cint}, cuDoubleComplex),
                   handle, m, descr, csrSortedValA, csrSortedRowPtrA, nnzPerRow, nnzC, tol)
end

@checked function cusparseScsr2csr_compress(handle, m, n, descrA, csrSortedValA,
                                            csrSortedColIndA, csrSortedRowPtrA, nnzA,
                                            nnzPerRow, csrSortedValC, csrSortedColIndC,
                                            csrSortedRowPtrC, tol)
    initialize_api()
    @runtime_ccall((:cusparseScsr2csr_compress, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, Cint, CuPtr{Cint}, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, Cfloat),
                   handle, m, n, descrA, csrSortedValA, csrSortedColIndA, csrSortedRowPtrA,
                   nnzA, nnzPerRow, csrSortedValC, csrSortedColIndC, csrSortedRowPtrC, tol)
end

@checked function cusparseDcsr2csr_compress(handle, m, n, descrA, csrSortedValA,
                                            csrSortedColIndA, csrSortedRowPtrA, nnzA,
                                            nnzPerRow, csrSortedValC, csrSortedColIndC,
                                            csrSortedRowPtrC, tol)
    initialize_api()
    @runtime_ccall((:cusparseDcsr2csr_compress, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, Cint, CuPtr{Cint}, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, Cdouble),
                   handle, m, n, descrA, csrSortedValA, csrSortedColIndA, csrSortedRowPtrA,
                   nnzA, nnzPerRow, csrSortedValC, csrSortedColIndC, csrSortedRowPtrC, tol)
end

@checked function cusparseCcsr2csr_compress(handle, m, n, descrA, csrSortedValA,
                                            csrSortedColIndA, csrSortedRowPtrA, nnzA,
                                            nnzPerRow, csrSortedValC, csrSortedColIndC,
                                            csrSortedRowPtrC, tol)
    initialize_api()
    @runtime_ccall((:cusparseCcsr2csr_compress, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, Cint, CuPtr{Cint}, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, cuComplex),
                   handle, m, n, descrA, csrSortedValA, csrSortedColIndA, csrSortedRowPtrA,
                   nnzA, nnzPerRow, csrSortedValC, csrSortedColIndC, csrSortedRowPtrC, tol)
end

@checked function cusparseZcsr2csr_compress(handle, m, n, descrA, csrSortedValA,
                                            csrSortedColIndA, csrSortedRowPtrA, nnzA,
                                            nnzPerRow, csrSortedValC, csrSortedColIndC,
                                            csrSortedRowPtrC, tol)
    initialize_api()
    @runtime_ccall((:cusparseZcsr2csr_compress, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, CuPtr{Cint},
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, cuDoubleComplex),
                   handle, m, n, descrA, csrSortedValA, csrSortedColIndA, csrSortedRowPtrA,
                   nnzA, nnzPerRow, csrSortedValC, csrSortedColIndC, csrSortedRowPtrC, tol)
end

@checked function cusparseSdense2csr(handle, m, n, descrA, A, lda, nnzPerRow,
                                     csrSortedValA, csrSortedRowPtrA, csrSortedColIndA)
    initialize_api()
    @runtime_ccall((:cusparseSdense2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat}, Cint,
                    CuPtr{Cint}, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, m, n, descrA, A, lda, nnzPerRow, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA)
end

@checked function cusparseDdense2csr(handle, m, n, descrA, A, lda, nnzPerRow,
                                     csrSortedValA, csrSortedRowPtrA, csrSortedColIndA)
    initialize_api()
    @runtime_ccall((:cusparseDdense2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    Cint, CuPtr{Cint}, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, m, n, descrA, A, lda, nnzPerRow, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA)
end

@checked function cusparseCdense2csr(handle, m, n, descrA, A, lda, nnzPerRow,
                                     csrSortedValA, csrSortedRowPtrA, csrSortedColIndA)
    initialize_api()
    @runtime_ccall((:cusparseCdense2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    Cint, CuPtr{Cint}, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, m, n, descrA, A, lda, nnzPerRow, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA)
end

@checked function cusparseZdense2csr(handle, m, n, descrA, A, lda, nnzPerRow,
                                     csrSortedValA, csrSortedRowPtrA, csrSortedColIndA)
    initialize_api()
    @runtime_ccall((:cusparseZdense2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{Cint}, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}),
                   handle, m, n, descrA, A, lda, nnzPerRow, csrSortedValA,
                   csrSortedRowPtrA, csrSortedColIndA)
end

@checked function cusparseScsr2dense(handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                                     csrSortedColIndA, A, lda)
    initialize_api()
    @runtime_ccall((:cusparseScsr2dense, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cfloat}, Cint),
                   handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                   A, lda)
end

@checked function cusparseDcsr2dense(handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                                     csrSortedColIndA, A, lda)
    initialize_api()
    @runtime_ccall((:cusparseDcsr2dense, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cdouble}, Cint),
                   handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                   A, lda)
end

@checked function cusparseCcsr2dense(handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                                     csrSortedColIndA, A, lda)
    initialize_api()
    @runtime_ccall((:cusparseCcsr2dense, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{cuComplex}, Cint),
                   handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                   A, lda)
end

@checked function cusparseZcsr2dense(handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                                     csrSortedColIndA, A, lda)
    initialize_api()
    @runtime_ccall((:cusparseZcsr2dense, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                   A, lda)
end

@checked function cusparseSdense2csc(handle, m, n, descrA, A, lda, nnzPerCol,
                                     cscSortedValA, cscSortedRowIndA, cscSortedColPtrA)
    initialize_api()
    @runtime_ccall((:cusparseSdense2csc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat}, Cint,
                    CuPtr{Cint}, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, m, n, descrA, A, lda, nnzPerCol, cscSortedValA,
                   cscSortedRowIndA, cscSortedColPtrA)
end

@checked function cusparseDdense2csc(handle, m, n, descrA, A, lda, nnzPerCol,
                                     cscSortedValA, cscSortedRowIndA, cscSortedColPtrA)
    initialize_api()
    @runtime_ccall((:cusparseDdense2csc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    Cint, CuPtr{Cint}, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, m, n, descrA, A, lda, nnzPerCol, cscSortedValA,
                   cscSortedRowIndA, cscSortedColPtrA)
end

@checked function cusparseCdense2csc(handle, m, n, descrA, A, lda, nnzPerCol,
                                     cscSortedValA, cscSortedRowIndA, cscSortedColPtrA)
    initialize_api()
    @runtime_ccall((:cusparseCdense2csc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    Cint, CuPtr{Cint}, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, m, n, descrA, A, lda, nnzPerCol, cscSortedValA,
                   cscSortedRowIndA, cscSortedColPtrA)
end

@checked function cusparseZdense2csc(handle, m, n, descrA, A, lda, nnzPerCol,
                                     cscSortedValA, cscSortedRowIndA, cscSortedColPtrA)
    initialize_api()
    @runtime_ccall((:cusparseZdense2csc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{Cint}, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}),
                   handle, m, n, descrA, A, lda, nnzPerCol, cscSortedValA,
                   cscSortedRowIndA, cscSortedColPtrA)
end

@checked function cusparseScsc2dense(handle, m, n, descrA, cscSortedValA, cscSortedRowIndA,
                                     cscSortedColPtrA, A, lda)
    initialize_api()
    @runtime_ccall((:cusparseScsc2dense, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cfloat}, Cint),
                   handle, m, n, descrA, cscSortedValA, cscSortedRowIndA, cscSortedColPtrA,
                   A, lda)
end

@checked function cusparseDcsc2dense(handle, m, n, descrA, cscSortedValA, cscSortedRowIndA,
                                     cscSortedColPtrA, A, lda)
    initialize_api()
    @runtime_ccall((:cusparseDcsc2dense, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cdouble}, Cint),
                   handle, m, n, descrA, cscSortedValA, cscSortedRowIndA, cscSortedColPtrA,
                   A, lda)
end

@checked function cusparseCcsc2dense(handle, m, n, descrA, cscSortedValA, cscSortedRowIndA,
                                     cscSortedColPtrA, A, lda)
    initialize_api()
    @runtime_ccall((:cusparseCcsc2dense, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{cuComplex}, Cint),
                   handle, m, n, descrA, cscSortedValA, cscSortedRowIndA, cscSortedColPtrA,
                   A, lda)
end

@checked function cusparseZcsc2dense(handle, m, n, descrA, cscSortedValA, cscSortedRowIndA,
                                     cscSortedColPtrA, A, lda)
    initialize_api()
    @runtime_ccall((:cusparseZcsc2dense, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, m, n, descrA, cscSortedValA, cscSortedRowIndA, cscSortedColPtrA,
                   A, lda)
end

@checked function cusparseXcoo2csr(handle, cooRowInd, nnz, m, csrSortedRowPtr, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseXcoo2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, CuPtr{Cint}, Cint, Cint, CuPtr{Cint},
                    cusparseIndexBase_t),
                   handle, cooRowInd, nnz, m, csrSortedRowPtr, idxBase)
end

@checked function cusparseXcsr2coo(handle, csrSortedRowPtr, nnz, m, cooRowInd, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseXcsr2coo, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, CuPtr{Cint}, Cint, Cint, CuPtr{Cint},
                    cusparseIndexBase_t),
                   handle, csrSortedRowPtr, nnz, m, cooRowInd, idxBase)
end

@checked function cusparseCsr2cscEx(handle, m, n, nnz, csrSortedVal, csrSortedValtype,
                                    csrSortedRowPtr, csrSortedColInd, cscSortedVal,
                                    cscSortedValtype, cscSortedRowInd, cscSortedColPtr,
                                    copyValues, idxBase, executiontype)
    initialize_api()
    @runtime_ccall((:cusparseCsr2cscEx, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cvoid}, cudaDataType,
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cvoid}, cudaDataType, CuPtr{Cint},
                    CuPtr{Cint}, cusparseAction_t, cusparseIndexBase_t, cudaDataType),
                   handle, m, n, nnz, csrSortedVal, csrSortedValtype, csrSortedRowPtr,
                   csrSortedColInd, cscSortedVal, cscSortedValtype, cscSortedRowInd,
                   cscSortedColPtr, copyValues, idxBase, executiontype)
end

@checked function cusparseScsr2csc(handle, m, n, nnz, csrSortedVal, csrSortedRowPtr,
                                   csrSortedColInd, cscSortedVal, cscSortedRowInd,
                                   cscSortedColPtr, copyValues, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseScsr2csc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, cusparseAction_t,
                    cusparseIndexBase_t),
                   handle, m, n, nnz, csrSortedVal, csrSortedRowPtr, csrSortedColInd,
                   cscSortedVal, cscSortedRowInd, cscSortedColPtr, copyValues, idxBase)
end

@checked function cusparseDcsr2csc(handle, m, n, nnz, csrSortedVal, csrSortedRowPtr,
                                   csrSortedColInd, cscSortedVal, cscSortedRowInd,
                                   cscSortedColPtr, copyValues, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseDcsr2csc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseAction_t, cusparseIndexBase_t),
                   handle, m, n, nnz, csrSortedVal, csrSortedRowPtr, csrSortedColInd,
                   cscSortedVal, cscSortedRowInd, cscSortedColPtr, copyValues, idxBase)
end

@checked function cusparseCcsr2csc(handle, m, n, nnz, csrSortedVal, csrSortedRowPtr,
                                   csrSortedColInd, cscSortedVal, cscSortedRowInd,
                                   cscSortedColPtr, copyValues, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseCcsr2csc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseAction_t, cusparseIndexBase_t),
                   handle, m, n, nnz, csrSortedVal, csrSortedRowPtr, csrSortedColInd,
                   cscSortedVal, cscSortedRowInd, cscSortedColPtr, copyValues, idxBase)
end

@checked function cusparseZcsr2csc(handle, m, n, nnz, csrSortedVal, csrSortedRowPtr,
                                   csrSortedColInd, cscSortedVal, cscSortedRowInd,
                                   cscSortedColPtr, copyValues, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseZcsr2csc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{cuDoubleComplex}, CuPtr{Cint},
                    CuPtr{Cint}, cusparseAction_t, cusparseIndexBase_t),
                   handle, m, n, nnz, csrSortedVal, csrSortedRowPtr, csrSortedColInd,
                   cscSortedVal, cscSortedRowInd, cscSortedColPtr, copyValues, idxBase)
end

@checked function cusparseSdense2hyb(handle, m, n, descrA, A, lda, nnzPerRow, hybA,
                                     userEllWidth, partitionType)
    initialize_api()
    @runtime_ccall((:cusparseSdense2hyb, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat}, Cint,
                    CuPtr{Cint}, cusparseHybMat_t, Cint, cusparseHybPartition_t),
                   handle, m, n, descrA, A, lda, nnzPerRow, hybA, userEllWidth,
                   partitionType)
end

@checked function cusparseDdense2hyb(handle, m, n, descrA, A, lda, nnzPerRow, hybA,
                                     userEllWidth, partitionType)
    initialize_api()
    @runtime_ccall((:cusparseDdense2hyb, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    Cint, CuPtr{Cint}, cusparseHybMat_t, Cint, cusparseHybPartition_t),
                   handle, m, n, descrA, A, lda, nnzPerRow, hybA, userEllWidth,
                   partitionType)
end

@checked function cusparseCdense2hyb(handle, m, n, descrA, A, lda, nnzPerRow, hybA,
                                     userEllWidth, partitionType)
    initialize_api()
    @runtime_ccall((:cusparseCdense2hyb, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    Cint, CuPtr{Cint}, cusparseHybMat_t, Cint, cusparseHybPartition_t),
                   handle, m, n, descrA, A, lda, nnzPerRow, hybA, userEllWidth,
                   partitionType)
end

@checked function cusparseZdense2hyb(handle, m, n, descrA, A, lda, nnzPerRow, hybA,
                                     userEllWidth, partitionType)
    initialize_api()
    @runtime_ccall((:cusparseZdense2hyb, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, Cint, CuPtr{Cint}, cusparseHybMat_t, Cint,
                    cusparseHybPartition_t),
                   handle, m, n, descrA, A, lda, nnzPerRow, hybA, userEllWidth,
                   partitionType)
end

@checked function cusparseShyb2dense(handle, descrA, hybA, A, lda)
    initialize_api()
    @runtime_ccall((:cusparseShyb2dense, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseMatDescr_t, cusparseHybMat_t, CuPtr{Cfloat},
                    Cint),
                   handle, descrA, hybA, A, lda)
end

@checked function cusparseDhyb2dense(handle, descrA, hybA, A, lda)
    initialize_api()
    @runtime_ccall((:cusparseDhyb2dense, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseMatDescr_t, cusparseHybMat_t,
                    CuPtr{Cdouble}, Cint),
                   handle, descrA, hybA, A, lda)
end

@checked function cusparseChyb2dense(handle, descrA, hybA, A, lda)
    initialize_api()
    @runtime_ccall((:cusparseChyb2dense, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseMatDescr_t, cusparseHybMat_t,
                    CuPtr{cuComplex}, Cint),
                   handle, descrA, hybA, A, lda)
end

@checked function cusparseZhyb2dense(handle, descrA, hybA, A, lda)
    initialize_api()
    @runtime_ccall((:cusparseZhyb2dense, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseMatDescr_t, cusparseHybMat_t,
                    CuPtr{cuDoubleComplex}, Cint),
                   handle, descrA, hybA, A, lda)
end

@checked function cusparseScsr2hyb(handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                                   csrSortedColIndA, hybA, userEllWidth, partitionType)
    initialize_api()
    @runtime_ccall((:cusparseScsr2hyb, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, cusparseHybMat_t, Cint,
                    cusparseHybPartition_t),
                   handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                   hybA, userEllWidth, partitionType)
end

@checked function cusparseDcsr2hyb(handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                                   csrSortedColIndA, hybA, userEllWidth, partitionType)
    initialize_api()
    @runtime_ccall((:cusparseDcsr2hyb, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, cusparseHybMat_t, Cint,
                    cusparseHybPartition_t),
                   handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                   hybA, userEllWidth, partitionType)
end

@checked function cusparseCcsr2hyb(handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                                   csrSortedColIndA, hybA, userEllWidth, partitionType)
    initialize_api()
    @runtime_ccall((:cusparseCcsr2hyb, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, cusparseHybMat_t, Cint,
                    cusparseHybPartition_t),
                   handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                   hybA, userEllWidth, partitionType)
end

@checked function cusparseZcsr2hyb(handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                                   csrSortedColIndA, hybA, userEllWidth, partitionType)
    initialize_api()
    @runtime_ccall((:cusparseZcsr2hyb, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, cusparseHybMat_t,
                    Cint, cusparseHybPartition_t),
                   handle, m, n, descrA, csrSortedValA, csrSortedRowPtrA, csrSortedColIndA,
                   hybA, userEllWidth, partitionType)
end

@checked function cusparseShyb2csr(handle, descrA, hybA, csrSortedValA, csrSortedRowPtrA,
                                   csrSortedColIndA)
    initialize_api()
    @runtime_ccall((:cusparseShyb2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseMatDescr_t, cusparseHybMat_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}),
                   handle, descrA, hybA, csrSortedValA, csrSortedRowPtrA, csrSortedColIndA)
end

@checked function cusparseDhyb2csr(handle, descrA, hybA, csrSortedValA, csrSortedRowPtrA,
                                   csrSortedColIndA)
    initialize_api()
    @runtime_ccall((:cusparseDhyb2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseMatDescr_t, cusparseHybMat_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, descrA, hybA, csrSortedValA, csrSortedRowPtrA, csrSortedColIndA)
end

@checked function cusparseChyb2csr(handle, descrA, hybA, csrSortedValA, csrSortedRowPtrA,
                                   csrSortedColIndA)
    initialize_api()
    @runtime_ccall((:cusparseChyb2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseMatDescr_t, cusparseHybMat_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, descrA, hybA, csrSortedValA, csrSortedRowPtrA, csrSortedColIndA)
end

@checked function cusparseZhyb2csr(handle, descrA, hybA, csrSortedValA, csrSortedRowPtrA,
                                   csrSortedColIndA)
    initialize_api()
    @runtime_ccall((:cusparseZhyb2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseMatDescr_t, cusparseHybMat_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, descrA, hybA, csrSortedValA, csrSortedRowPtrA, csrSortedColIndA)
end

@checked function cusparseScsc2hyb(handle, m, n, descrA, cscSortedValA, cscSortedRowIndA,
                                   cscSortedColPtrA, hybA, userEllWidth, partitionType)
    initialize_api()
    @runtime_ccall((:cusparseScsc2hyb, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, cusparseHybMat_t, Cint,
                    cusparseHybPartition_t),
                   handle, m, n, descrA, cscSortedValA, cscSortedRowIndA, cscSortedColPtrA,
                   hybA, userEllWidth, partitionType)
end

@checked function cusparseDcsc2hyb(handle, m, n, descrA, cscSortedValA, cscSortedRowIndA,
                                   cscSortedColPtrA, hybA, userEllWidth, partitionType)
    initialize_api()
    @runtime_ccall((:cusparseDcsc2hyb, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{Cdouble},
                    CuPtr{Cint}, CuPtr{Cint}, cusparseHybMat_t, Cint,
                    cusparseHybPartition_t),
                   handle, m, n, descrA, cscSortedValA, cscSortedRowIndA, cscSortedColPtrA,
                   hybA, userEllWidth, partitionType)
end

@checked function cusparseCcsc2hyb(handle, m, n, descrA, cscSortedValA, cscSortedRowIndA,
                                   cscSortedColPtrA, hybA, userEllWidth, partitionType)
    initialize_api()
    @runtime_ccall((:cusparseCcsc2hyb, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t, CuPtr{cuComplex},
                    CuPtr{Cint}, CuPtr{Cint}, cusparseHybMat_t, Cint,
                    cusparseHybPartition_t),
                   handle, m, n, descrA, cscSortedValA, cscSortedRowIndA, cscSortedColPtrA,
                   hybA, userEllWidth, partitionType)
end

@checked function cusparseZcsc2hyb(handle, m, n, descrA, cscSortedValA, cscSortedRowIndA,
                                   cscSortedColPtrA, hybA, userEllWidth, partitionType)
    initialize_api()
    @runtime_ccall((:cusparseZcsc2hyb, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, cusparseHybMat_t,
                    Cint, cusparseHybPartition_t),
                   handle, m, n, descrA, cscSortedValA, cscSortedRowIndA, cscSortedColPtrA,
                   hybA, userEllWidth, partitionType)
end

@checked function cusparseShyb2csc(handle, descrA, hybA, cscSortedVal, cscSortedRowInd,
                                   cscSortedColPtr)
    initialize_api()
    @runtime_ccall((:cusparseShyb2csc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseMatDescr_t, cusparseHybMat_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}),
                   handle, descrA, hybA, cscSortedVal, cscSortedRowInd, cscSortedColPtr)
end

@checked function cusparseDhyb2csc(handle, descrA, hybA, cscSortedVal, cscSortedRowInd,
                                   cscSortedColPtr)
    initialize_api()
    @runtime_ccall((:cusparseDhyb2csc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseMatDescr_t, cusparseHybMat_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, descrA, hybA, cscSortedVal, cscSortedRowInd, cscSortedColPtr)
end

@checked function cusparseChyb2csc(handle, descrA, hybA, cscSortedVal, cscSortedRowInd,
                                   cscSortedColPtr)
    initialize_api()
    @runtime_ccall((:cusparseChyb2csc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseMatDescr_t, cusparseHybMat_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, descrA, hybA, cscSortedVal, cscSortedRowInd, cscSortedColPtr)
end

@checked function cusparseZhyb2csc(handle, descrA, hybA, cscSortedVal, cscSortedRowInd,
                                   cscSortedColPtr)
    initialize_api()
    @runtime_ccall((:cusparseZhyb2csc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseMatDescr_t, cusparseHybMat_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, descrA, hybA, cscSortedVal, cscSortedRowInd, cscSortedColPtr)
end

@checked function cusparseXcsr2bsrNnz(handle, dirA, m, n, descrA, csrSortedRowPtrA,
                                      csrSortedColIndA, blockDim, descrC, bsrSortedRowPtrC,
                                      nnzTotalDevHostPtr)
    initialize_api()
    @runtime_ccall((:cusparseXcsr2bsrNnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cint}, CuPtr{Cint}, Cint, cusparseMatDescr_t, CuPtr{Cint},
                    PtrOrCuPtr{Cint}),
                   handle, dirA, m, n, descrA, csrSortedRowPtrA, csrSortedColIndA,
                   blockDim, descrC, bsrSortedRowPtrC, nnzTotalDevHostPtr)
end

@checked function cusparseScsr2bsr(handle, dirA, m, n, descrA, csrSortedValA,
                                   csrSortedRowPtrA, csrSortedColIndA, blockDim, descrC,
                                   bsrSortedValC, bsrSortedRowPtrC, bsrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseScsr2bsr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, blockDim, descrC, bsrSortedValC, bsrSortedRowPtrC,
                   bsrSortedColIndC)
end

@checked function cusparseDcsr2bsr(handle, dirA, m, n, descrA, csrSortedValA,
                                   csrSortedRowPtrA, csrSortedColIndA, blockDim, descrC,
                                   bsrSortedValC, bsrSortedRowPtrC, bsrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseDcsr2bsr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, blockDim, descrC, bsrSortedValC, bsrSortedRowPtrC,
                   bsrSortedColIndC)
end

@checked function cusparseCcsr2bsr(handle, dirA, m, n, descrA, csrSortedValA,
                                   csrSortedRowPtrA, csrSortedColIndA, blockDim, descrC,
                                   bsrSortedValC, bsrSortedRowPtrC, bsrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseCcsr2bsr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, blockDim, descrC, bsrSortedValC, bsrSortedRowPtrC,
                   bsrSortedColIndC)
end

@checked function cusparseZcsr2bsr(handle, dirA, m, n, descrA, csrSortedValA,
                                   csrSortedRowPtrA, csrSortedColIndA, blockDim, descrC,
                                   bsrSortedValC, bsrSortedRowPtrC, bsrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseZcsr2bsr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, blockDim, descrC, bsrSortedValC, bsrSortedRowPtrC,
                   bsrSortedColIndC)
end

@checked function cusparseSbsr2csr(handle, dirA, mb, nb, descrA, bsrSortedValA,
                                   bsrSortedRowPtrA, bsrSortedColIndA, blockDim, descrC,
                                   csrSortedValC, csrSortedRowPtrC, csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseSbsr2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, dirA, mb, nb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockDim, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC)
end

@checked function cusparseDbsr2csr(handle, dirA, mb, nb, descrA, bsrSortedValA,
                                   bsrSortedRowPtrA, bsrSortedColIndA, blockDim, descrC,
                                   csrSortedValC, csrSortedRowPtrC, csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseDbsr2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, dirA, mb, nb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockDim, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC)
end

@checked function cusparseCbsr2csr(handle, dirA, mb, nb, descrA, bsrSortedValA,
                                   bsrSortedRowPtrA, bsrSortedColIndA, blockDim, descrC,
                                   csrSortedValC, csrSortedRowPtrC, csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseCbsr2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, dirA, mb, nb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockDim, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC)
end

@checked function cusparseZbsr2csr(handle, dirA, mb, nb, descrA, bsrSortedValA,
                                   bsrSortedRowPtrA, bsrSortedColIndA, blockDim, descrC,
                                   csrSortedValC, csrSortedRowPtrC, csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseZbsr2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, dirA, mb, nb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, blockDim, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC)
end

@checked function cusparseSgebsr2gebsc_bufferSize(handle, mb, nb, nnzb, bsrSortedVal,
                                                  bsrSortedRowPtr, bsrSortedColInd,
                                                  rowBlockDim, colBlockDim,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSgebsr2gebsc_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, Cint, Ptr{Cint}),
                   handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr, bsrSortedColInd,
                   rowBlockDim, colBlockDim, pBufferSizeInBytes)
end

@checked function cusparseDgebsr2gebsc_bufferSize(handle, mb, nb, nnzb, bsrSortedVal,
                                                  bsrSortedRowPtr, bsrSortedColInd,
                                                  rowBlockDim, colBlockDim,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDgebsr2gebsc_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, Cint, Ptr{Cint}),
                   handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr, bsrSortedColInd,
                   rowBlockDim, colBlockDim, pBufferSizeInBytes)
end

@checked function cusparseCgebsr2gebsc_bufferSize(handle, mb, nb, nnzb, bsrSortedVal,
                                                  bsrSortedRowPtr, bsrSortedColInd,
                                                  rowBlockDim, colBlockDim,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCgebsr2gebsc_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, Cint, Ptr{Cint}),
                   handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr, bsrSortedColInd,
                   rowBlockDim, colBlockDim, pBufferSizeInBytes)
end

@checked function cusparseZgebsr2gebsc_bufferSize(handle, mb, nb, nnzb, bsrSortedVal,
                                                  bsrSortedRowPtr, bsrSortedColInd,
                                                  rowBlockDim, colBlockDim,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZgebsr2gebsc_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, Ptr{Cint}),
                   handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr, bsrSortedColInd,
                   rowBlockDim, colBlockDim, pBufferSizeInBytes)
end

@checked function cusparseSgebsr2gebsc_bufferSizeExt(handle, mb, nb, nnzb, bsrSortedVal,
                                                     bsrSortedRowPtr, bsrSortedColInd,
                                                     rowBlockDim, colBlockDim, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseSgebsr2gebsc_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, Cint, Ptr{Csize_t}),
                   handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr, bsrSortedColInd,
                   rowBlockDim, colBlockDim, pBufferSize)
end

@checked function cusparseDgebsr2gebsc_bufferSizeExt(handle, mb, nb, nnzb, bsrSortedVal,
                                                     bsrSortedRowPtr, bsrSortedColInd,
                                                     rowBlockDim, colBlockDim, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseDgebsr2gebsc_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, Cint, Ptr{Csize_t}),
                   handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr, bsrSortedColInd,
                   rowBlockDim, colBlockDim, pBufferSize)
end

@checked function cusparseCgebsr2gebsc_bufferSizeExt(handle, mb, nb, nnzb, bsrSortedVal,
                                                     bsrSortedRowPtr, bsrSortedColInd,
                                                     rowBlockDim, colBlockDim, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseCgebsr2gebsc_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, Cint, Ptr{Csize_t}),
                   handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr, bsrSortedColInd,
                   rowBlockDim, colBlockDim, pBufferSize)
end

@checked function cusparseZgebsr2gebsc_bufferSizeExt(handle, mb, nb, nnzb, bsrSortedVal,
                                                     bsrSortedRowPtr, bsrSortedColInd,
                                                     rowBlockDim, colBlockDim, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseZgebsr2gebsc_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, Ptr{Csize_t}),
                   handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr, bsrSortedColInd,
                   rowBlockDim, colBlockDim, pBufferSize)
end

@checked function cusparseSgebsr2gebsc(handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr,
                                       bsrSortedColInd, rowBlockDim, colBlockDim, bscVal,
                                       bscRowInd, bscColPtr, copyValues, idxBase, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSgebsr2gebsc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseAction_t, cusparseIndexBase_t, CuPtr{Cvoid}),
                   handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr, bsrSortedColInd,
                   rowBlockDim, colBlockDim, bscVal, bscRowInd, bscColPtr, copyValues,
                   idxBase, pBuffer)
end

@checked function cusparseDgebsr2gebsc(handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr,
                                       bsrSortedColInd, rowBlockDim, colBlockDim, bscVal,
                                       bscRowInd, bscColPtr, copyValues, idxBase, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDgebsr2gebsc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseAction_t, cusparseIndexBase_t, CuPtr{Cvoid}),
                   handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr, bsrSortedColInd,
                   rowBlockDim, colBlockDim, bscVal, bscRowInd, bscColPtr, copyValues,
                   idxBase, pBuffer)
end

@checked function cusparseCgebsr2gebsc(handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr,
                                       bsrSortedColInd, rowBlockDim, colBlockDim, bscVal,
                                       bscRowInd, bscColPtr, copyValues, idxBase, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCgebsr2gebsc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, Cint, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    cusparseAction_t, cusparseIndexBase_t, CuPtr{Cvoid}),
                   handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr, bsrSortedColInd,
                   rowBlockDim, colBlockDim, bscVal, bscRowInd, bscColPtr, copyValues,
                   idxBase, pBuffer)
end

@checked function cusparseZgebsr2gebsc(handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr,
                                       bsrSortedColInd, rowBlockDim, colBlockDim, bscVal,
                                       bscRowInd, bscColPtr, copyValues, idxBase, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZgebsr2gebsc, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, cusparseAction_t, cusparseIndexBase_t,
                    CuPtr{Cvoid}),
                   handle, mb, nb, nnzb, bsrSortedVal, bsrSortedRowPtr, bsrSortedColInd,
                   rowBlockDim, colBlockDim, bscVal, bscRowInd, bscColPtr, copyValues,
                   idxBase, pBuffer)
end

@checked function cusparseXgebsr2csr(handle, dirA, mb, nb, descrA, bsrSortedRowPtrA,
                                     bsrSortedColIndA, rowBlockDim, colBlockDim, descrC,
                                     csrSortedRowPtrC, csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseXgebsr2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, cusparseMatDescr_t, CuPtr{Cint},
                    CuPtr{Cint}),
                   handle, dirA, mb, nb, descrA, bsrSortedRowPtrA, bsrSortedColIndA,
                   rowBlockDim, colBlockDim, descrC, csrSortedRowPtrC, csrSortedColIndC)
end

@checked function cusparseSgebsr2csr(handle, dirA, mb, nb, descrA, bsrSortedValA,
                                     bsrSortedRowPtrA, bsrSortedColIndA, rowBlockDim,
                                     colBlockDim, descrC, csrSortedValC, csrSortedRowPtrC,
                                     csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseSgebsr2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, dirA, mb, nb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDim, colBlockDim, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC)
end

@checked function cusparseDgebsr2csr(handle, dirA, mb, nb, descrA, bsrSortedValA,
                                     bsrSortedRowPtrA, bsrSortedColIndA, rowBlockDim,
                                     colBlockDim, descrC, csrSortedValC, csrSortedRowPtrC,
                                     csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseDgebsr2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, dirA, mb, nb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDim, colBlockDim, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC)
end

@checked function cusparseCgebsr2csr(handle, dirA, mb, nb, descrA, bsrSortedValA,
                                     bsrSortedRowPtrA, bsrSortedColIndA, rowBlockDim,
                                     colBlockDim, descrC, csrSortedValC, csrSortedRowPtrC,
                                     csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseCgebsr2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, dirA, mb, nb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDim, colBlockDim, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC)
end

@checked function cusparseZgebsr2csr(handle, dirA, mb, nb, descrA, bsrSortedValA,
                                     bsrSortedRowPtrA, bsrSortedColIndA, rowBlockDim,
                                     colBlockDim, descrC, csrSortedValC, csrSortedRowPtrC,
                                     csrSortedColIndC)
    initialize_api()
    @runtime_ccall((:cusparseZgebsr2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}),
                   handle, dirA, mb, nb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDim, colBlockDim, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC)
end

@checked function cusparseScsr2gebsr_bufferSize(handle, dirA, m, n, descrA, csrSortedValA,
                                                csrSortedRowPtrA, csrSortedColIndA,
                                                rowBlockDim, colBlockDim, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseScsr2gebsr_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, Ptr{Cint}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, rowBlockDim, colBlockDim, pBufferSizeInBytes)
end

@checked function cusparseDcsr2gebsr_bufferSize(handle, dirA, m, n, descrA, csrSortedValA,
                                                csrSortedRowPtrA, csrSortedColIndA,
                                                rowBlockDim, colBlockDim, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDcsr2gebsr_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, Ptr{Cint}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, rowBlockDim, colBlockDim, pBufferSizeInBytes)
end

@checked function cusparseCcsr2gebsr_bufferSize(handle, dirA, m, n, descrA, csrSortedValA,
                                                csrSortedRowPtrA, csrSortedColIndA,
                                                rowBlockDim, colBlockDim, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCcsr2gebsr_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, Ptr{Cint}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, rowBlockDim, colBlockDim, pBufferSizeInBytes)
end

@checked function cusparseZcsr2gebsr_bufferSize(handle, dirA, m, n, descrA, csrSortedValA,
                                                csrSortedRowPtrA, csrSortedColIndA,
                                                rowBlockDim, colBlockDim, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZcsr2gebsr_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, Ptr{Cint}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, rowBlockDim, colBlockDim, pBufferSizeInBytes)
end

@checked function cusparseScsr2gebsr_bufferSizeExt(handle, dirA, m, n, descrA,
                                                   csrSortedValA, csrSortedRowPtrA,
                                                   csrSortedColIndA, rowBlockDim,
                                                   colBlockDim, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseScsr2gebsr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, Ptr{Csize_t}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, rowBlockDim, colBlockDim, pBufferSize)
end

@checked function cusparseDcsr2gebsr_bufferSizeExt(handle, dirA, m, n, descrA,
                                                   csrSortedValA, csrSortedRowPtrA,
                                                   csrSortedColIndA, rowBlockDim,
                                                   colBlockDim, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseDcsr2gebsr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, Ptr{Csize_t}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, rowBlockDim, colBlockDim, pBufferSize)
end

@checked function cusparseCcsr2gebsr_bufferSizeExt(handle, dirA, m, n, descrA,
                                                   csrSortedValA, csrSortedRowPtrA,
                                                   csrSortedColIndA, rowBlockDim,
                                                   colBlockDim, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseCcsr2gebsr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, Ptr{Csize_t}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, rowBlockDim, colBlockDim, pBufferSize)
end

@checked function cusparseZcsr2gebsr_bufferSizeExt(handle, dirA, m, n, descrA,
                                                   csrSortedValA, csrSortedRowPtrA,
                                                   csrSortedColIndA, rowBlockDim,
                                                   colBlockDim, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseZcsr2gebsr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint,
                    Ptr{Csize_t}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, rowBlockDim, colBlockDim, pBufferSize)
end

@checked function cusparseXcsr2gebsrNnz(handle, dirA, m, n, descrA, csrSortedRowPtrA,
                                        csrSortedColIndA, descrC, bsrSortedRowPtrC,
                                        rowBlockDim, colBlockDim, nnzTotalDevHostPtr,
                                        pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseXcsr2gebsrNnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t, CuPtr{Cint}, Cint, Cint,
                    PtrOrCuPtr{Cint}, CuPtr{Cvoid}),
                   handle, dirA, m, n, descrA, csrSortedRowPtrA, csrSortedColIndA, descrC,
                   bsrSortedRowPtrC, rowBlockDim, colBlockDim, nnzTotalDevHostPtr, pBuffer)
end

@checked function cusparseScsr2gebsr(handle, dirA, m, n, descrA, csrSortedValA,
                                     csrSortedRowPtrA, csrSortedColIndA, descrC,
                                     bsrSortedValC, bsrSortedRowPtrC, bsrSortedColIndC,
                                     rowBlockDim, colBlockDim, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseScsr2gebsr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, CuPtr{Cvoid}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, descrC, bsrSortedValC, bsrSortedRowPtrC,
                   bsrSortedColIndC, rowBlockDim, colBlockDim, pBuffer)
end

@checked function cusparseDcsr2gebsr(handle, dirA, m, n, descrA, csrSortedValA,
                                     csrSortedRowPtrA, csrSortedColIndA, descrC,
                                     bsrSortedValC, bsrSortedRowPtrC, bsrSortedColIndC,
                                     rowBlockDim, colBlockDim, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDcsr2gebsr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, CuPtr{Cvoid}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, descrC, bsrSortedValC, bsrSortedRowPtrC,
                   bsrSortedColIndC, rowBlockDim, colBlockDim, pBuffer)
end

@checked function cusparseCcsr2gebsr(handle, dirA, m, n, descrA, csrSortedValA,
                                     csrSortedRowPtrA, csrSortedColIndA, descrC,
                                     bsrSortedValC, bsrSortedRowPtrC, bsrSortedColIndC,
                                     rowBlockDim, colBlockDim, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCcsr2gebsr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint, CuPtr{Cvoid}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, descrC, bsrSortedValC, bsrSortedRowPtrC,
                   bsrSortedColIndC, rowBlockDim, colBlockDim, pBuffer)
end

@checked function cusparseZcsr2gebsr(handle, dirA, m, n, descrA, csrSortedValA,
                                     csrSortedRowPtrA, csrSortedColIndA, descrC,
                                     bsrSortedValC, bsrSortedRowPtrC, bsrSortedColIndC,
                                     rowBlockDim, colBlockDim, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZcsr2gebsr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint,
                    CuPtr{Cvoid}),
                   handle, dirA, m, n, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, descrC, bsrSortedValC, bsrSortedRowPtrC,
                   bsrSortedColIndC, rowBlockDim, colBlockDim, pBuffer)
end

@checked function cusparseSgebsr2gebsr_bufferSize(handle, dirA, mb, nb, nnzb, descrA,
                                                  bsrSortedValA, bsrSortedRowPtrA,
                                                  bsrSortedColIndA, rowBlockDimA,
                                                  colBlockDimA, rowBlockDimC, colBlockDimC,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSgebsr2gebsr_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    Cint, Cint, Cint, Ptr{Cint}),
                   handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDimA, colBlockDimA, rowBlockDimC,
                   colBlockDimC, pBufferSizeInBytes)
end

@checked function cusparseDgebsr2gebsr_bufferSize(handle, dirA, mb, nb, nnzb, descrA,
                                                  bsrSortedValA, bsrSortedRowPtrA,
                                                  bsrSortedColIndA, rowBlockDimA,
                                                  colBlockDimA, rowBlockDimC, colBlockDimC,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDgebsr2gebsr_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    Cint, Cint, Cint, Ptr{Cint}),
                   handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDimA, colBlockDimA, rowBlockDimC,
                   colBlockDimC, pBufferSizeInBytes)
end

@checked function cusparseCgebsr2gebsr_bufferSize(handle, dirA, mb, nb, nnzb, descrA,
                                                  bsrSortedValA, bsrSortedRowPtrA,
                                                  bsrSortedColIndA, rowBlockDimA,
                                                  colBlockDimA, rowBlockDimC, colBlockDimC,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCgebsr2gebsr_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    Cint, Cint, Cint, Ptr{Cint}),
                   handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDimA, colBlockDimA, rowBlockDimC,
                   colBlockDimC, pBufferSizeInBytes)
end

@checked function cusparseZgebsr2gebsr_bufferSize(handle, dirA, mb, nb, nnzb, descrA,
                                                  bsrSortedValA, bsrSortedRowPtrA,
                                                  bsrSortedColIndA, rowBlockDimA,
                                                  colBlockDimA, rowBlockDimC, colBlockDimC,
                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZgebsr2gebsr_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, Cint, Cint, Cint, Ptr{Cint}),
                   handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDimA, colBlockDimA, rowBlockDimC,
                   colBlockDimC, pBufferSizeInBytes)
end

@checked function cusparseSgebsr2gebsr_bufferSizeExt(handle, dirA, mb, nb, nnzb, descrA,
                                                     bsrSortedValA, bsrSortedRowPtrA,
                                                     bsrSortedColIndA, rowBlockDimA,
                                                     colBlockDimA, rowBlockDimC,
                                                     colBlockDimC, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseSgebsr2gebsr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    Cint, Cint, Cint, Ptr{Csize_t}),
                   handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDimA, colBlockDimA, rowBlockDimC,
                   colBlockDimC, pBufferSize)
end

@checked function cusparseDgebsr2gebsr_bufferSizeExt(handle, dirA, mb, nb, nnzb, descrA,
                                                     bsrSortedValA, bsrSortedRowPtrA,
                                                     bsrSortedColIndA, rowBlockDimA,
                                                     colBlockDimA, rowBlockDimC,
                                                     colBlockDimC, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseDgebsr2gebsr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    Cint, Cint, Cint, Ptr{Csize_t}),
                   handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDimA, colBlockDimA, rowBlockDimC,
                   colBlockDimC, pBufferSize)
end

@checked function cusparseCgebsr2gebsr_bufferSizeExt(handle, dirA, mb, nb, nnzb, descrA,
                                                     bsrSortedValA, bsrSortedRowPtrA,
                                                     bsrSortedColIndA, rowBlockDimA,
                                                     colBlockDimA, rowBlockDimC,
                                                     colBlockDimC, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseCgebsr2gebsr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    Cint, Cint, Cint, Ptr{Csize_t}),
                   handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDimA, colBlockDimA, rowBlockDimC,
                   colBlockDimC, pBufferSize)
end

@checked function cusparseZgebsr2gebsr_bufferSizeExt(handle, dirA, mb, nb, nnzb, descrA,
                                                     bsrSortedValA, bsrSortedRowPtrA,
                                                     bsrSortedColIndA, rowBlockDimA,
                                                     colBlockDimA, rowBlockDimC,
                                                     colBlockDimC, pBufferSize)
    initialize_api()
    @runtime_ccall((:cusparseZgebsr2gebsr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, Cint, Cint, Cint, Ptr{Csize_t}),
                   handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDimA, colBlockDimA, rowBlockDimC,
                   colBlockDimC, pBufferSize)
end

@checked function cusparseXgebsr2gebsrNnz(handle, dirA, mb, nb, nnzb, descrA,
                                          bsrSortedRowPtrA, bsrSortedColIndA, rowBlockDimA,
                                          colBlockDimA, descrC, bsrSortedRowPtrC,
                                          rowBlockDimC, colBlockDimC, nnzTotalDevHostPtr,
                                          pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseXgebsr2gebsrNnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{Cint}, CuPtr{Cint}, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{Cint}, Cint, Cint, PtrOrCuPtr{Cint},
                    CuPtr{Cvoid}),
                   handle, dirA, mb, nb, nnzb, descrA, bsrSortedRowPtrA, bsrSortedColIndA,
                   rowBlockDimA, colBlockDimA, descrC, bsrSortedRowPtrC, rowBlockDimC,
                   colBlockDimC, nnzTotalDevHostPtr, pBuffer)
end

@checked function cusparseSgebsr2gebsr(handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA,
                                       bsrSortedRowPtrA, bsrSortedColIndA, rowBlockDimA,
                                       colBlockDimA, descrC, bsrSortedValC,
                                       bsrSortedRowPtrC, bsrSortedColIndC, rowBlockDimC,
                                       colBlockDimC, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSgebsr2gebsr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, Cint, CuPtr{Cvoid}),
                   handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDimA, colBlockDimA, descrC, bsrSortedValC,
                   bsrSortedRowPtrC, bsrSortedColIndC, rowBlockDimC, colBlockDimC, pBuffer)
end

@checked function cusparseDgebsr2gebsr(handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA,
                                       bsrSortedRowPtrA, bsrSortedColIndA, rowBlockDimA,
                                       colBlockDimA, descrC, bsrSortedValC,
                                       bsrSortedRowPtrC, bsrSortedColIndC, rowBlockDimC,
                                       colBlockDimC, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDgebsr2gebsr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, Cint, CuPtr{Cvoid}),
                   handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDimA, colBlockDimA, descrC, bsrSortedValC,
                   bsrSortedRowPtrC, bsrSortedColIndC, rowBlockDimC, colBlockDimC, pBuffer)
end

@checked function cusparseCgebsr2gebsr(handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA,
                                       bsrSortedRowPtrA, bsrSortedColIndA, rowBlockDimA,
                                       colBlockDimA, descrC, bsrSortedValC,
                                       bsrSortedRowPtrC, bsrSortedColIndC, rowBlockDimC,
                                       colBlockDimC, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCgebsr2gebsr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, Cint,
                    Cint, cusparseMatDescr_t, CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, Cint, CuPtr{Cvoid}),
                   handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDimA, colBlockDimA, descrC, bsrSortedValC,
                   bsrSortedRowPtrC, bsrSortedColIndC, rowBlockDimC, colBlockDimC, pBuffer)
end

@checked function cusparseZgebsr2gebsr(handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA,
                                       bsrSortedRowPtrA, bsrSortedColIndA, rowBlockDimA,
                                       colBlockDimA, descrC, bsrSortedValC,
                                       bsrSortedRowPtrC, bsrSortedColIndC, rowBlockDimC,
                                       colBlockDimC, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZgebsr2gebsr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseDirection_t, Cint, Cint, Cint,
                    cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint},
                    Cint, Cint, cusparseMatDescr_t, CuPtr{cuDoubleComplex}, CuPtr{Cint},
                    CuPtr{Cint}, Cint, Cint, CuPtr{Cvoid}),
                   handle, dirA, mb, nb, nnzb, descrA, bsrSortedValA, bsrSortedRowPtrA,
                   bsrSortedColIndA, rowBlockDimA, colBlockDimA, descrC, bsrSortedValC,
                   bsrSortedRowPtrC, bsrSortedColIndC, rowBlockDimC, colBlockDimC, pBuffer)
end

@checked function cusparseCreateIdentityPermutation(handle, n, p)
    initialize_api()
    @runtime_ccall((:cusparseCreateIdentityPermutation, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, CuPtr{Cint}),
                   handle, n, p)
end

@checked function cusparseXcoosort_bufferSizeExt(handle, m, n, nnz, cooRowsA, cooColsA,
                                                 pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseXcoosort_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cint}, CuPtr{Cint},
                    Ptr{Csize_t}),
                   handle, m, n, nnz, cooRowsA, cooColsA, pBufferSizeInBytes)
end

@checked function cusparseXcoosortByRow(handle, m, n, nnz, cooRowsA, cooColsA, P, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseXcoosortByRow, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{Cvoid}),
                   handle, m, n, nnz, cooRowsA, cooColsA, P, pBuffer)
end

@checked function cusparseXcoosortByColumn(handle, m, n, nnz, cooRowsA, cooColsA, P, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseXcoosortByColumn, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{Cvoid}),
                   handle, m, n, nnz, cooRowsA, cooColsA, P, pBuffer)
end

@checked function cusparseXcsrsort_bufferSizeExt(handle, m, n, nnz, csrRowPtrA, csrColIndA,
                                                 pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseXcsrsort_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cint}, CuPtr{Cint},
                    Ptr{Csize_t}),
                   handle, m, n, nnz, csrRowPtrA, csrColIndA, pBufferSizeInBytes)
end

@checked function cusparseXcsrsort(handle, m, n, nnz, descrA, csrRowPtrA, csrColIndA, P,
                                   pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseXcsrsort, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cvoid}),
                   handle, m, n, nnz, descrA, csrRowPtrA, csrColIndA, P, pBuffer)
end

@checked function cusparseXcscsort_bufferSizeExt(handle, m, n, nnz, cscColPtrA, cscRowIndA,
                                                 pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseXcscsort_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cint}, CuPtr{Cint},
                    Ptr{Csize_t}),
                   handle, m, n, nnz, cscColPtrA, cscRowIndA, pBufferSizeInBytes)
end

@checked function cusparseXcscsort(handle, m, n, nnz, descrA, cscColPtrA, cscRowIndA, P,
                                   pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseXcscsort, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cvoid}),
                   handle, m, n, nnz, descrA, cscColPtrA, cscRowIndA, P, pBuffer)
end

@checked function cusparseScsru2csr_bufferSizeExt(handle, m, n, nnz, csrVal, csrRowPtr,
                                                  csrColInd, info, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseScsru2csr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cfloat}, CuPtr{Cint},
                    CuPtr{Cint}, csru2csrInfo_t, Ptr{Csize_t}),
                   handle, m, n, nnz, csrVal, csrRowPtr, csrColInd, info,
                   pBufferSizeInBytes)
end

@checked function cusparseDcsru2csr_bufferSizeExt(handle, m, n, nnz, csrVal, csrRowPtr,
                                                  csrColInd, info, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDcsru2csr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cdouble}, CuPtr{Cint},
                    CuPtr{Cint}, csru2csrInfo_t, Ptr{Csize_t}),
                   handle, m, n, nnz, csrVal, csrRowPtr, csrColInd, info,
                   pBufferSizeInBytes)
end

@checked function cusparseCcsru2csr_bufferSizeExt(handle, m, n, nnz, csrVal, csrRowPtr,
                                                  csrColInd, info, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseCcsru2csr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{cuComplex}, CuPtr{Cint},
                    CuPtr{Cint}, csru2csrInfo_t, Ptr{Csize_t}),
                   handle, m, n, nnz, csrVal, csrRowPtr, csrColInd, info,
                   pBufferSizeInBytes)
end

@checked function cusparseZcsru2csr_bufferSizeExt(handle, m, n, nnz, csrVal, csrRowPtr,
                                                  csrColInd, info, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseZcsru2csr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{cuDoubleComplex},
                    CuPtr{Cint}, CuPtr{Cint}, csru2csrInfo_t, Ptr{Csize_t}),
                   handle, m, n, nnz, csrVal, csrRowPtr, csrColInd, info,
                   pBufferSizeInBytes)
end

@checked function cusparseScsru2csr(handle, m, n, nnz, descrA, csrVal, csrRowPtr,
                                    csrColInd, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseScsru2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, csru2csrInfo_t, CuPtr{Cvoid}),
                   handle, m, n, nnz, descrA, csrVal, csrRowPtr, csrColInd, info, pBuffer)
end

@checked function cusparseDcsru2csr(handle, m, n, nnz, descrA, csrVal, csrRowPtr,
                                    csrColInd, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDcsru2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, csru2csrInfo_t, CuPtr{Cvoid}),
                   handle, m, n, nnz, descrA, csrVal, csrRowPtr, csrColInd, info, pBuffer)
end

@checked function cusparseCcsru2csr(handle, m, n, nnz, descrA, csrVal, csrRowPtr,
                                    csrColInd, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCcsru2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, csru2csrInfo_t,
                    CuPtr{Cvoid}),
                   handle, m, n, nnz, descrA, csrVal, csrRowPtr, csrColInd, info, pBuffer)
end

@checked function cusparseZcsru2csr(handle, m, n, nnz, descrA, csrVal, csrRowPtr,
                                    csrColInd, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZcsru2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, csru2csrInfo_t,
                    CuPtr{Cvoid}),
                   handle, m, n, nnz, descrA, csrVal, csrRowPtr, csrColInd, info, pBuffer)
end

@checked function cusparseScsr2csru(handle, m, n, nnz, descrA, csrVal, csrRowPtr,
                                    csrColInd, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseScsr2csru, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, csru2csrInfo_t, CuPtr{Cvoid}),
                   handle, m, n, nnz, descrA, csrVal, csrRowPtr, csrColInd, info, pBuffer)
end

@checked function cusparseDcsr2csru(handle, m, n, nnz, descrA, csrVal, csrRowPtr,
                                    csrColInd, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDcsr2csru, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, csru2csrInfo_t, CuPtr{Cvoid}),
                   handle, m, n, nnz, descrA, csrVal, csrRowPtr, csrColInd, info, pBuffer)
end

@checked function cusparseCcsr2csru(handle, m, n, nnz, descrA, csrVal, csrRowPtr,
                                    csrColInd, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseCcsr2csru, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuComplex}, CuPtr{Cint}, CuPtr{Cint}, csru2csrInfo_t,
                    CuPtr{Cvoid}),
                   handle, m, n, nnz, descrA, csrVal, csrRowPtr, csrColInd, info, pBuffer)
end

@checked function cusparseZcsr2csru(handle, m, n, nnz, descrA, csrVal, csrRowPtr,
                                    csrColInd, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseZcsr2csru, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{cuDoubleComplex}, CuPtr{Cint}, CuPtr{Cint}, csru2csrInfo_t,
                    CuPtr{Cvoid}),
                   handle, m, n, nnz, descrA, csrVal, csrRowPtr, csrColInd, info, pBuffer)
end

@checked function cusparseSpruneDense2csr_bufferSizeExt(handle, m, n, A, lda, threshold,
                                                        descrC, csrSortedValC,
                                                        csrSortedRowPtrC, csrSortedColIndC,
                                                        pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSpruneDense2csr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, Cint, Ptr{Cfloat},
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    Ptr{Csize_t}),
                   handle, m, n, A, lda, threshold, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC, pBufferSizeInBytes)
end

@checked function cusparseDpruneDense2csr_bufferSizeExt(handle, m, n, A, lda, threshold,
                                                        descrC, csrSortedValC,
                                                        csrSortedRowPtrC, csrSortedColIndC,
                                                        pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDpruneDense2csr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, Cint, Ptr{Cdouble},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    Ptr{Csize_t}),
                   handle, m, n, A, lda, threshold, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC, pBufferSizeInBytes)
end

@checked function cusparseSpruneDense2csrNnz(handle, m, n, A, lda, threshold, descrC,
                                             csrRowPtrC, nnzTotalDevHostPtr, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSpruneDense2csrNnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, Cint, Ptr{Cfloat},
                    cusparseMatDescr_t, CuPtr{Cint}, PtrOrCuPtr{Cint}, CuPtr{Cvoid}),
                   handle, m, n, A, lda, threshold, descrC, csrRowPtrC, nnzTotalDevHostPtr,
                   pBuffer)
end

@checked function cusparseDpruneDense2csrNnz(handle, m, n, A, lda, threshold, descrC,
                                             csrSortedRowPtrC, nnzTotalDevHostPtr, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDpruneDense2csrNnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, Cint, Ptr{Cdouble},
                    cusparseMatDescr_t, CuPtr{Cint}, PtrOrCuPtr{Cint}, CuPtr{Cvoid}),
                   handle, m, n, A, lda, threshold, descrC, csrSortedRowPtrC,
                   nnzTotalDevHostPtr, pBuffer)
end

@checked function cusparseSpruneDense2csr(handle, m, n, A, lda, threshold, descrC,
                                          csrSortedValC, csrSortedRowPtrC,
                                          csrSortedColIndC, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSpruneDense2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, Cint, Ptr{Cfloat},
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{Cvoid}),
                   handle, m, n, A, lda, threshold, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC, pBuffer)
end

@checked function cusparseDpruneDense2csr(handle, m, n, A, lda, threshold, descrC,
                                          csrSortedValC, csrSortedRowPtrC,
                                          csrSortedColIndC, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDpruneDense2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, Cint, Ptr{Cdouble},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{Cvoid}),
                   handle, m, n, A, lda, threshold, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC, pBuffer)
end

@checked function cusparseSpruneCsr2csr_bufferSizeExt(handle, m, n, nnzA, descrA,
                                                      csrSortedValA, csrSortedRowPtrA,
                                                      csrSortedColIndA, threshold, descrC,
                                                      csrSortedValC, csrSortedRowPtrC,
                                                      csrSortedColIndC, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSpruneCsr2csr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, Ptr{Cfloat}, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Csize_t}),
                   handle, m, n, nnzA, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, threshold, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, pBufferSizeInBytes)
end

@checked function cusparseDpruneCsr2csr_bufferSizeExt(handle, m, n, nnzA, descrA,
                                                      csrSortedValA, csrSortedRowPtrA,
                                                      csrSortedColIndA, threshold, descrC,
                                                      csrSortedValC, csrSortedRowPtrC,
                                                      csrSortedColIndC, pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDpruneCsr2csr_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Cdouble},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    Ptr{Csize_t}),
                   handle, m, n, nnzA, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, threshold, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, pBufferSizeInBytes)
end

@checked function cusparseSpruneCsr2csrNnz(handle, m, n, nnzA, descrA, csrSortedValA,
                                           csrSortedRowPtrA, csrSortedColIndA, threshold,
                                           descrC, csrSortedRowPtrC, nnzTotalDevHostPtr,
                                           pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSpruneCsr2csrNnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, Ptr{Cfloat}, cusparseMatDescr_t, CuPtr{Cint},
                    PtrOrCuPtr{Cint}, CuPtr{Cvoid}),
                   handle, m, n, nnzA, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, threshold, descrC, csrSortedRowPtrC,
                   nnzTotalDevHostPtr, pBuffer)
end

@checked function cusparseDpruneCsr2csrNnz(handle, m, n, nnzA, descrA, csrSortedValA,
                                           csrSortedRowPtrA, csrSortedColIndA, threshold,
                                           descrC, csrSortedRowPtrC, nnzTotalDevHostPtr,
                                           pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDpruneCsr2csrNnz, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Cdouble},
                    cusparseMatDescr_t, CuPtr{Cint}, PtrOrCuPtr{Cint}, CuPtr{Cvoid}),
                   handle, m, n, nnzA, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, threshold, descrC, csrSortedRowPtrC,
                   nnzTotalDevHostPtr, pBuffer)
end

@checked function cusparseSpruneCsr2csr(handle, m, n, nnzA, descrA, csrSortedValA,
                                        csrSortedRowPtrA, csrSortedColIndA, threshold,
                                        descrC, csrSortedValC, csrSortedRowPtrC,
                                        csrSortedColIndC, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSpruneCsr2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, Ptr{Cfloat}, cusparseMatDescr_t,
                    CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint}, CuPtr{Cvoid}),
                   handle, m, n, nnzA, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, threshold, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, pBuffer)
end

@checked function cusparseDpruneCsr2csr(handle, m, n, nnzA, descrA, csrSortedValA,
                                        csrSortedRowPtrA, csrSortedColIndA, threshold,
                                        descrC, csrSortedValC, csrSortedRowPtrC,
                                        csrSortedColIndC, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDpruneCsr2csr, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Ptr{Cdouble},
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    CuPtr{Cvoid}),
                   handle, m, n, nnzA, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, threshold, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, pBuffer)
end

@checked function cusparseSpruneDense2csrByPercentage_bufferSizeExt(handle, m, n, A, lda,
                                                                    percentage, descrC,
                                                                    csrSortedValC,
                                                                    csrSortedRowPtrC,
                                                                    csrSortedColIndC, info,
                                                                    pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSpruneDense2csrByPercentage_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, Cint, Cfloat,
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    pruneInfo_t, Ptr{Csize_t}),
                   handle, m, n, A, lda, percentage, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC, info, pBufferSizeInBytes)
end

@checked function cusparseDpruneDense2csrByPercentage_bufferSizeExt(handle, m, n, A, lda,
                                                                    percentage, descrC,
                                                                    csrSortedValC,
                                                                    csrSortedRowPtrC,
                                                                    csrSortedColIndC, info,
                                                                    pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDpruneDense2csrByPercentage_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, Cint, Cfloat,
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    pruneInfo_t, Ptr{Csize_t}),
                   handle, m, n, A, lda, percentage, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC, info, pBufferSizeInBytes)
end

@checked function cusparseSpruneDense2csrNnzByPercentage(handle, m, n, A, lda, percentage,
                                                         descrC, csrRowPtrC,
                                                         nnzTotalDevHostPtr, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSpruneDense2csrNnzByPercentage, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, Cint, Cfloat,
                    cusparseMatDescr_t, CuPtr{Cint}, PtrOrCuPtr{Cint}, pruneInfo_t,
                    CuPtr{Cvoid}),
                   handle, m, n, A, lda, percentage, descrC, csrRowPtrC,
                   nnzTotalDevHostPtr, info, pBuffer)
end

@checked function cusparseDpruneDense2csrNnzByPercentage(handle, m, n, A, lda, percentage,
                                                         descrC, csrRowPtrC,
                                                         nnzTotalDevHostPtr, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDpruneDense2csrNnzByPercentage, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, Cint, Cfloat,
                    cusparseMatDescr_t, CuPtr{Cint}, PtrOrCuPtr{Cint}, pruneInfo_t,
                    CuPtr{Cvoid}),
                   handle, m, n, A, lda, percentage, descrC, csrRowPtrC,
                   nnzTotalDevHostPtr, info, pBuffer)
end

@checked function cusparseSpruneDense2csrByPercentage(handle, m, n, A, lda, percentage,
                                                      descrC, csrSortedValC,
                                                      csrSortedRowPtrC, csrSortedColIndC,
                                                      info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSpruneDense2csrByPercentage, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cfloat}, Cint, Cfloat,
                    cusparseMatDescr_t, CuPtr{Cfloat}, CuPtr{Cint}, CuPtr{Cint},
                    pruneInfo_t, CuPtr{Cvoid}),
                   handle, m, n, A, lda, percentage, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC, info, pBuffer)
end

@checked function cusparseDpruneDense2csrByPercentage(handle, m, n, A, lda, percentage,
                                                      descrC, csrSortedValC,
                                                      csrSortedRowPtrC, csrSortedColIndC,
                                                      info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDpruneDense2csrByPercentage, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, CuPtr{Cdouble}, Cint, Cfloat,
                    cusparseMatDescr_t, CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint},
                    pruneInfo_t, CuPtr{Cvoid}),
                   handle, m, n, A, lda, percentage, descrC, csrSortedValC,
                   csrSortedRowPtrC, csrSortedColIndC, info, pBuffer)
end

@checked function cusparseSpruneCsr2csrByPercentage_bufferSizeExt(handle, m, n, nnzA,
                                                                  descrA, csrSortedValA,
                                                                  csrSortedRowPtrA,
                                                                  csrSortedColIndA,
                                                                  percentage, descrC,
                                                                  csrSortedValC,
                                                                  csrSortedRowPtrC,
                                                                  csrSortedColIndC, info,
                                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseSpruneCsr2csrByPercentage_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, Cfloat, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, pruneInfo_t, Ptr{Csize_t}),
                   handle, m, n, nnzA, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, percentage, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, info, pBufferSizeInBytes)
end

@checked function cusparseDpruneCsr2csrByPercentage_bufferSizeExt(handle, m, n, nnzA,
                                                                  descrA, csrSortedValA,
                                                                  csrSortedRowPtrA,
                                                                  csrSortedColIndA,
                                                                  percentage, descrC,
                                                                  csrSortedValC,
                                                                  csrSortedRowPtrC,
                                                                  csrSortedColIndC, info,
                                                                  pBufferSizeInBytes)
    initialize_api()
    @runtime_ccall((:cusparseDpruneCsr2csrByPercentage_bufferSizeExt, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cfloat, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, pruneInfo_t, Ptr{Csize_t}),
                   handle, m, n, nnzA, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, percentage, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, info, pBufferSizeInBytes)
end

@checked function cusparseSpruneCsr2csrNnzByPercentage(handle, m, n, nnzA, descrA,
                                                       csrSortedValA, csrSortedRowPtrA,
                                                       csrSortedColIndA, percentage,
                                                       descrC, csrSortedRowPtrC,
                                                       nnzTotalDevHostPtr, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSpruneCsr2csrNnzByPercentage, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, Cfloat, cusparseMatDescr_t, CuPtr{Cint},
                    PtrOrCuPtr{Cint}, pruneInfo_t, CuPtr{Cvoid}),
                   handle, m, n, nnzA, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, percentage, descrC, csrSortedRowPtrC,
                   nnzTotalDevHostPtr, info, pBuffer)
end

@checked function cusparseDpruneCsr2csrNnzByPercentage(handle, m, n, nnzA, descrA,
                                                       csrSortedValA, csrSortedRowPtrA,
                                                       csrSortedColIndA, percentage,
                                                       descrC, csrSortedRowPtrC,
                                                       nnzTotalDevHostPtr, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDpruneCsr2csrNnzByPercentage, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cfloat, cusparseMatDescr_t,
                    CuPtr{Cint}, PtrOrCuPtr{Cint}, pruneInfo_t, CuPtr{Cvoid}),
                   handle, m, n, nnzA, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, percentage, descrC, csrSortedRowPtrC,
                   nnzTotalDevHostPtr, info, pBuffer)
end

@checked function cusparseSpruneCsr2csrByPercentage(handle, m, n, nnzA, descrA,
                                                    csrSortedValA, csrSortedRowPtrA,
                                                    csrSortedColIndA, percentage, descrC,
                                                    csrSortedValC, csrSortedRowPtrC,
                                                    csrSortedColIndC, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSpruneCsr2csrByPercentage, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, Cfloat, cusparseMatDescr_t, CuPtr{Cfloat},
                    CuPtr{Cint}, CuPtr{Cint}, pruneInfo_t, CuPtr{Cvoid}),
                   handle, m, n, nnzA, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, percentage, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, info, pBuffer)
end

@checked function cusparseDpruneCsr2csrByPercentage(handle, m, n, nnzA, descrA,
                                                    csrSortedValA, csrSortedRowPtrA,
                                                    csrSortedColIndA, percentage, descrC,
                                                    csrSortedValC, csrSortedRowPtrC,
                                                    csrSortedColIndC, info, pBuffer)
    initialize_api()
    @runtime_ccall((:cusparseDpruneCsr2csrByPercentage, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, Cfloat, cusparseMatDescr_t,
                    CuPtr{Cdouble}, CuPtr{Cint}, CuPtr{Cint}, pruneInfo_t, CuPtr{Cvoid}),
                   handle, m, n, nnzA, descrA, csrSortedValA, csrSortedRowPtrA,
                   csrSortedColIndA, percentage, descrC, csrSortedValC, csrSortedRowPtrC,
                   csrSortedColIndC, info, pBuffer)
end

@checked function cusparseCsr2cscEx2(handle, m, n, nnz, csrVal, csrRowPtr, csrColInd,
                                     cscVal, cscColPtr, cscRowInd, valType, copyValues,
                                     idxBase, alg, buffer)
    initialize_api()
    @runtime_ccall((:cusparseCsr2cscEx2, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cvoid}, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{Cvoid}, CuPtr{Cint}, CuPtr{Cint}, cudaDataType,
                    cusparseAction_t, cusparseIndexBase_t, cusparseCsr2CscAlg_t,
                    CuPtr{Cvoid}),
                   handle, m, n, nnz, csrVal, csrRowPtr, csrColInd, cscVal, cscColPtr,
                   cscRowInd, valType, copyValues, idxBase, alg, buffer)
end

@checked function cusparseCsr2cscEx2_bufferSize(handle, m, n, nnz, csrVal, csrRowPtr,
                                                csrColInd, cscVal, cscColPtr, cscRowInd,
                                                valType, copyValues, idxBase, alg,
                                                bufferSize)
    initialize_api()
    @runtime_ccall((:cusparseCsr2cscEx2_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, Cint, Cint, Cint, CuPtr{Cvoid}, CuPtr{Cint},
                    CuPtr{Cint}, CuPtr{Cvoid}, CuPtr{Cint}, CuPtr{Cint}, cudaDataType,
                    cusparseAction_t, cusparseIndexBase_t, cusparseCsr2CscAlg_t,
                    Ptr{Csize_t}),
                   handle, m, n, nnz, csrVal, csrRowPtr, csrColInd, cscVal, cscColPtr,
                   cscRowInd, valType, copyValues, idxBase, alg, bufferSize)
end

@checked function cusparseCreateSpVec(spVecDescr, size, nnz, indices, values, idxType,
                                      idxBase, valueType)
    initialize_api()
    @runtime_ccall((:cusparseCreateSpVec, libcusparse()), cusparseStatus_t,
                   (Ptr{cusparseSpVecDescr_t}, Int64, Int64, CuPtr{Cvoid}, CuPtr{Cvoid},
                    cusparseIndexType_t, cusparseIndexBase_t, cudaDataType),
                   spVecDescr, size, nnz, indices, values, idxType, idxBase, valueType)
end

@checked function cusparseDestroySpVec(spVecDescr)
    initialize_api()
    @runtime_ccall((:cusparseDestroySpVec, libcusparse()), cusparseStatus_t,
                   (cusparseSpVecDescr_t,),
                   spVecDescr)
end

@checked function cusparseSpVecGet(spVecDescr, size, nnz, indices, values, idxType,
                                   idxBase, valueType)
    initialize_api()
    @runtime_ccall((:cusparseSpVecGet, libcusparse()), cusparseStatus_t,
                   (cusparseSpVecDescr_t, Ptr{Int64}, Ptr{Int64}, CuPtr{Ptr{Cvoid}},
                    CuPtr{Ptr{Cvoid}}, Ptr{cusparseIndexType_t}, Ptr{cusparseIndexBase_t},
                    Ptr{cudaDataType}),
                   spVecDescr, size, nnz, indices, values, idxType, idxBase, valueType)
end

@checked function cusparseSpVecGetIndexBase(spVecDescr, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseSpVecGetIndexBase, libcusparse()), cusparseStatus_t,
                   (cusparseSpVecDescr_t, Ptr{cusparseIndexBase_t}),
                   spVecDescr, idxBase)
end

@checked function cusparseSpVecGetValues(spVecDescr, values)
    initialize_api()
    @runtime_ccall((:cusparseSpVecGetValues, libcusparse()), cusparseStatus_t,
                   (cusparseSpVecDescr_t, CuPtr{Ptr{Cvoid}}),
                   spVecDescr, values)
end

@checked function cusparseSpVecSetValues(spVecDescr, values)
    initialize_api()
    @runtime_ccall((:cusparseSpVecSetValues, libcusparse()), cusparseStatus_t,
                   (cusparseSpVecDescr_t, CuPtr{Cvoid}),
                   spVecDescr, values)
end

@checked function cusparseCreateDnVec(dnVecDescr, size, values, valueType)
    initialize_api()
    @runtime_ccall((:cusparseCreateDnVec, libcusparse()), cusparseStatus_t,
                   (Ptr{cusparseDnVecDescr_t}, Int64, CuPtr{Cvoid}, cudaDataType),
                   dnVecDescr, size, values, valueType)
end

@checked function cusparseDestroyDnVec(dnVecDescr)
    initialize_api()
    @runtime_ccall((:cusparseDestroyDnVec, libcusparse()), cusparseStatus_t,
                   (cusparseDnVecDescr_t,),
                   dnVecDescr)
end

@checked function cusparseDnVecGet(dnVecDescr, size, values, valueType)
    initialize_api()
    @runtime_ccall((:cusparseDnVecGet, libcusparse()), cusparseStatus_t,
                   (cusparseDnVecDescr_t, Ptr{Int64}, CuPtr{Ptr{Cvoid}}, Ptr{cudaDataType}),
                   dnVecDescr, size, values, valueType)
end

@checked function cusparseDnVecGetValues(dnVecDescr, values)
    initialize_api()
    @runtime_ccall((:cusparseDnVecGetValues, libcusparse()), cusparseStatus_t,
                   (cusparseDnVecDescr_t, CuPtr{Ptr{Cvoid}}),
                   dnVecDescr, values)
end

@checked function cusparseDnVecSetValues(dnVecDescr, values)
    initialize_api()
    @runtime_ccall((:cusparseDnVecSetValues, libcusparse()), cusparseStatus_t,
                   (cusparseDnVecDescr_t, CuPtr{Cvoid}),
                   dnVecDescr, values)
end

@checked function cusparseCreateCoo(spMatDescr, rows, cols, nnz, cooRowInd, cooColInd,
                                    cooValues, cooIdxType, idxBase, valueType)
    initialize_api()
    @runtime_ccall((:cusparseCreateCoo, libcusparse()), cusparseStatus_t,
                   (Ptr{cusparseSpMatDescr_t}, Int64, Int64, Int64, CuPtr{Cvoid},
                    CuPtr{Cvoid}, CuPtr{Cvoid}, cusparseIndexType_t, cusparseIndexBase_t,
                    cudaDataType),
                   spMatDescr, rows, cols, nnz, cooRowInd, cooColInd, cooValues,
                   cooIdxType, idxBase, valueType)
end

@checked function cusparseCreateCsr(spMatDescr, rows, cols, nnz, csrRowOffsets, csrColInd,
                                    csrValues, csrRowOffsetsType, csrColIndType, idxBase,
                                    valueType)
    initialize_api()
    @runtime_ccall((:cusparseCreateCsr, libcusparse()), cusparseStatus_t,
                   (Ptr{cusparseSpMatDescr_t}, Int64, Int64, Int64, CuPtr{Cvoid},
                    CuPtr{Cvoid}, CuPtr{Cvoid}, cusparseIndexType_t, cusparseIndexType_t,
                    cusparseIndexBase_t, cudaDataType),
                   spMatDescr, rows, cols, nnz, csrRowOffsets, csrColInd, csrValues,
                   csrRowOffsetsType, csrColIndType, idxBase, valueType)
end

@checked function cusparseCreateCooAoS(spMatDescr, rows, cols, nnz, cooInd, cooValues,
                                       cooIdxType, idxBase, valueType)
    initialize_api()
    @runtime_ccall((:cusparseCreateCooAoS, libcusparse()), cusparseStatus_t,
                   (Ptr{cusparseSpMatDescr_t}, Int64, Int64, Int64, CuPtr{Cvoid},
                    CuPtr{Cvoid}, cusparseIndexType_t, cusparseIndexBase_t, cudaDataType),
                   spMatDescr, rows, cols, nnz, cooInd, cooValues, cooIdxType, idxBase,
                   valueType)
end

@checked function cusparseDestroySpMat(spMatDescr)
    initialize_api()
    @runtime_ccall((:cusparseDestroySpMat, libcusparse()), cusparseStatus_t,
                   (cusparseSpMatDescr_t,),
                   spMatDescr)
end

@checked function cusparseCooGet(spMatDescr, rows, cols, nnz, cooRowInd, cooColInd,
                                 cooValues, idxType, idxBase, valueType)
    initialize_api()
    @runtime_ccall((:cusparseCooGet, libcusparse()), cusparseStatus_t,
                   (cusparseSpMatDescr_t, Ptr{Int64}, Ptr{Int64}, Ptr{Int64},
                    CuPtr{Ptr{Cvoid}}, CuPtr{Ptr{Cvoid}}, CuPtr{Ptr{Cvoid}},
                    Ptr{cusparseIndexType_t}, Ptr{cusparseIndexBase_t}, Ptr{cudaDataType}),
                   spMatDescr, rows, cols, nnz, cooRowInd, cooColInd, cooValues, idxType,
                   idxBase, valueType)
end

@checked function cusparseCooAoSGet(spMatDescr, rows, cols, nnz, cooInd, cooValues,
                                    idxType, idxBase, valueType)
    initialize_api()
    @runtime_ccall((:cusparseCooAoSGet, libcusparse()), cusparseStatus_t,
                   (cusparseSpMatDescr_t, Ptr{Int64}, Ptr{Int64}, Ptr{Int64},
                    CuPtr{Ptr{Cvoid}}, CuPtr{Ptr{Cvoid}}, Ptr{cusparseIndexType_t},
                    Ptr{cusparseIndexBase_t}, Ptr{cudaDataType}),
                   spMatDescr, rows, cols, nnz, cooInd, cooValues, idxType, idxBase,
                   valueType)
end

@checked function cusparseCsrGet(spMatDescr, rows, cols, nnz, csrRowOffsets, csrColInd,
                                 csrValues, csrRowOffsetsType, csrColIndType, idxBase,
                                 valueType)
    initialize_api()
    @runtime_ccall((:cusparseCsrGet, libcusparse()), cusparseStatus_t,
                   (cusparseSpMatDescr_t, Ptr{Int64}, Ptr{Int64}, Ptr{Int64},
                    CuPtr{Ptr{Cvoid}}, CuPtr{Ptr{Cvoid}}, CuPtr{Ptr{Cvoid}},
                    Ptr{cusparseIndexType_t}, Ptr{cusparseIndexType_t},
                    Ptr{cusparseIndexBase_t}, Ptr{cudaDataType}),
                   spMatDescr, rows, cols, nnz, csrRowOffsets, csrColInd, csrValues,
                   csrRowOffsetsType, csrColIndType, idxBase, valueType)
end

@checked function cusparseSpMatGetFormat(spMatDescr, format)
    initialize_api()
    @runtime_ccall((:cusparseSpMatGetFormat, libcusparse()), cusparseStatus_t,
                   (cusparseSpMatDescr_t, Ptr{cusparseFormat_t}),
                   spMatDescr, format)
end

@checked function cusparseSpMatGetIndexBase(spMatDescr, idxBase)
    initialize_api()
    @runtime_ccall((:cusparseSpMatGetIndexBase, libcusparse()), cusparseStatus_t,
                   (cusparseSpMatDescr_t, Ptr{cusparseIndexBase_t}),
                   spMatDescr, idxBase)
end

@checked function cusparseSpMatGetValues(spMatDescr, values)
    initialize_api()
    @runtime_ccall((:cusparseSpMatGetValues, libcusparse()), cusparseStatus_t,
                   (cusparseSpMatDescr_t, CuPtr{Ptr{Cvoid}}),
                   spMatDescr, values)
end

@checked function cusparseSpMatSetValues(spMatDescr, values)
    initialize_api()
    @runtime_ccall((:cusparseSpMatSetValues, libcusparse()), cusparseStatus_t,
                   (cusparseSpMatDescr_t, CuPtr{Cvoid}),
                   spMatDescr, values)
end

@checked function cusparseSpMatSetStridedBatch(spMatDescr, batchCount)
    initialize_api()
    @runtime_ccall((:cusparseSpMatSetStridedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseSpMatDescr_t, Cint),
                   spMatDescr, batchCount)
end

@checked function cusparseSpMatGetStridedBatch(spMatDescr, batchCount)
    initialize_api()
    @runtime_ccall((:cusparseSpMatGetStridedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseSpMatDescr_t, Ptr{Cint}),
                   spMatDescr, batchCount)
end

@checked function cusparseCreateDnMat(dnMatDescr, rows, cols, ld, values, valueType, order)
    initialize_api()
    @runtime_ccall((:cusparseCreateDnMat, libcusparse()), cusparseStatus_t,
                   (Ptr{cusparseDnMatDescr_t}, Int64, Int64, Int64, CuPtr{Cvoid},
                    cudaDataType, cusparseOrder_t),
                   dnMatDescr, rows, cols, ld, values, valueType, order)
end

@checked function cusparseDestroyDnMat(dnMatDescr)
    initialize_api()
    @runtime_ccall((:cusparseDestroyDnMat, libcusparse()), cusparseStatus_t,
                   (cusparseDnMatDescr_t,),
                   dnMatDescr)
end

@checked function cusparseDnMatGet(dnMatDescr, rows, cols, ld, values, type, order)
    initialize_api()
    @runtime_ccall((:cusparseDnMatGet, libcusparse()), cusparseStatus_t,
                   (cusparseDnMatDescr_t, Ptr{Int64}, Ptr{Int64}, Ptr{Int64},
                    CuPtr{Ptr{Cvoid}}, Ptr{cudaDataType}, Ptr{cusparseOrder_t}),
                   dnMatDescr, rows, cols, ld, values, type, order)
end

@checked function cusparseDnMatGetValues(dnMatDescr, values)
    initialize_api()
    @runtime_ccall((:cusparseDnMatGetValues, libcusparse()), cusparseStatus_t,
                   (cusparseDnMatDescr_t, CuPtr{Ptr{Cvoid}}),
                   dnMatDescr, values)
end

@checked function cusparseDnMatSetValues(dnMatDescr, values)
    initialize_api()
    @runtime_ccall((:cusparseDnMatSetValues, libcusparse()), cusparseStatus_t,
                   (cusparseDnMatDescr_t, CuPtr{Cvoid}),
                   dnMatDescr, values)
end

@checked function cusparseDnMatSetStridedBatch(dnMatDescr, batchCount, batchStride)
    initialize_api()
    @runtime_ccall((:cusparseDnMatSetStridedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseDnMatDescr_t, Cint, Int64),
                   dnMatDescr, batchCount, batchStride)
end

@checked function cusparseDnMatGetStridedBatch(dnMatDescr, batchCount, batchStride)
    initialize_api()
    @runtime_ccall((:cusparseDnMatGetStridedBatch, libcusparse()), cusparseStatus_t,
                   (cusparseDnMatDescr_t, Ptr{Cint}, Ptr{Int64}),
                   dnMatDescr, batchCount, batchStride)
end

@checked function cusparseSpVV(handle, opX, vecX, vecY, result, computeType, externalBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSpVV, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseSpVecDescr_t,
                    cusparseDnVecDescr_t, PtrOrCuPtr{Cvoid}, cudaDataType, CuPtr{Cvoid}),
                   handle, opX, vecX, vecY, result, computeType, externalBuffer)
end

@checked function cusparseSpVV_bufferSize(handle, opX, vecX, vecY, result, computeType,
                                          bufferSize)
    initialize_api()
    @runtime_ccall((:cusparseSpVV_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseSpVecDescr_t,
                    cusparseDnVecDescr_t, PtrOrCuPtr{Cvoid}, cudaDataType, Ptr{Csize_t}),
                   handle, opX, vecX, vecY, result, computeType, bufferSize)
end

@checked function cusparseSpMV(handle, opA, alpha, matA, vecX, beta, vecY, computeType,
                               alg, externalBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSpMV, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, PtrOrCuPtr{Cvoid},
                    cusparseSpMatDescr_t, cusparseDnVecDescr_t, PtrOrCuPtr{Cvoid},
                    cusparseDnVecDescr_t, cudaDataType, cusparseSpMVAlg_t, CuPtr{Cvoid}),
                   handle, opA, alpha, matA, vecX, beta, vecY, computeType, alg,
                   externalBuffer)
end

@checked function cusparseSpMV_bufferSize(handle, opA, alpha, matA, vecX, beta, vecY,
                                          computeType, alg, bufferSize)
    initialize_api()
    @runtime_ccall((:cusparseSpMV_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, Ptr{Cvoid},
                    cusparseSpMatDescr_t, cusparseDnVecDescr_t, Ptr{Cvoid},
                    cusparseDnVecDescr_t, cudaDataType, cusparseSpMVAlg_t, Ptr{Csize_t}),
                   handle, opA, alpha, matA, vecX, beta, vecY, computeType, alg,
                   bufferSize)
end

@checked function cusparseSpMM(handle, opA, opB, alpha, matA, matB, beta, matC,
                               computeType, alg, externalBuffer)
    initialize_api()
    @runtime_ccall((:cusparseSpMM, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseOperation_t,
                    PtrOrCuPtr{Cvoid}, cusparseSpMatDescr_t, cusparseDnMatDescr_t,
                    PtrOrCuPtr{Cvoid}, cusparseDnMatDescr_t, cudaDataType,
                    cusparseSpMMAlg_t, CuPtr{Cvoid}),
                   handle, opA, opB, alpha, matA, matB, beta, matC, computeType, alg,
                   externalBuffer)
end

@checked function cusparseSpMM_bufferSize(handle, opA, opB, alpha, matA, matB, beta, matC,
                                          computeType, alg, bufferSize)
    initialize_api()
    @runtime_ccall((:cusparseSpMM_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseOperation_t,
                    Ptr{Cvoid}, cusparseSpMatDescr_t, cusparseDnMatDescr_t, Ptr{Cvoid},
                    cusparseDnMatDescr_t, cudaDataType, cusparseSpMMAlg_t, Ptr{Csize_t}),
                   handle, opA, opB, alpha, matA, matB, beta, matC, computeType, alg,
                   bufferSize)
end

@checked function cusparseConstrainedGeMM(handle, opA, opB, alpha, matA, matB, beta, matC,
                                          computeType, externalBuffer)
    initialize_api()
    @runtime_ccall((:cusparseConstrainedGeMM, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseOperation_t,
                    PtrOrCuPtr{Cvoid}, cusparseDnMatDescr_t, cusparseDnMatDescr_t,
                    PtrOrCuPtr{Cvoid}, cusparseSpMatDescr_t, cudaDataType, CuPtr{Cvoid}),
                   handle, opA, opB, alpha, matA, matB, beta, matC, computeType,
                   externalBuffer)
end

@checked function cusparseConstrainedGeMM_bufferSize(handle, opA, opB, alpha, matA, matB,
                                                     beta, matC, computeType, bufferSize)
    initialize_api()
    @runtime_ccall((:cusparseConstrainedGeMM_bufferSize, libcusparse()), cusparseStatus_t,
                   (cusparseHandle_t, cusparseOperation_t, cusparseOperation_t,
                    Ptr{Cvoid}, cusparseDnMatDescr_t, cusparseDnMatDescr_t, Ptr{Cvoid},
                    cusparseSpMatDescr_t, cudaDataType, Ptr{Csize_t}),
                   handle, opA, opB, alpha, matA, matB, beta, matC, computeType,
                   bufferSize)
end
