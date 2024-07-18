class Failures{
  String message;

  Failures(this.message);
}
class RemoteFailure extends Failures{
  RemoteFailure(super.message);
}