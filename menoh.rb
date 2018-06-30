class Menoh < Formula
  desc "DNN inference library with C API"
  homepage "https://github.com/pfnet-research/menoh"
  head "https://github.com/pfnet-research/menoh.git"
  depends_on "cmake" => :build
  depends_on "doxygen" => :build
  depends_on "protobuf" => :build
  depends_on "mkl-dnn"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
    bin.install "tool/menoh_onnx_viewer"
  end

  test do
    # TODO: Implement test!
    system "true"
  end
end
