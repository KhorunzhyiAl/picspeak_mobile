// Not quite sure wheather this should be an abstract class or a mixin. 
mixin Cacheable {
  Future<void> cache();
  Future<void> load();
}