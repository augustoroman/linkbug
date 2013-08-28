package linkbug

// extern void say_hi();
//
// #cgo darwin,amd64 LDFLAGS: -Lout/darwin_amd64
// #cgo linux,amd64 LDFLAGS: -Lout/linux_amd64
// #cgo LDFLAGS: -lbug
import "C"

func SayHi() {
	C.say_hi()
}
