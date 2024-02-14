// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addTodoHash() => r'4a3552ccf4afb512acd76c45a9c1ab3447ac66ef';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [addTodo].
@ProviderFor(addTodo)
const addTodoProvider = AddTodoFamily();

/// See also [addTodo].
class AddTodoFamily extends Family<void> {
  /// See also [addTodo].
  const AddTodoFamily();

  /// See also [addTodo].
  AddTodoProvider call({
    required TodoModel model,
  }) {
    return AddTodoProvider(
      model: model,
    );
  }

  @override
  AddTodoProvider getProviderOverride(
    covariant AddTodoProvider provider,
  ) {
    return call(
      model: provider.model,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addTodoProvider';
}

/// See also [addTodo].
class AddTodoProvider extends AutoDisposeProvider<void> {
  /// See also [addTodo].
  AddTodoProvider({
    required TodoModel model,
  }) : this._internal(
          (ref) => addTodo(
            ref as AddTodoRef,
            model: model,
          ),
          from: addTodoProvider,
          name: r'addTodoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addTodoHash,
          dependencies: AddTodoFamily._dependencies,
          allTransitiveDependencies: AddTodoFamily._allTransitiveDependencies,
          model: model,
        );

  AddTodoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.model,
  }) : super.internal();

  final TodoModel model;

  @override
  Override overrideWith(
    void Function(AddTodoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddTodoProvider._internal(
        (ref) => create(ref as AddTodoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        model: model,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<void> createElement() {
    return _AddTodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddTodoProvider && other.model == model;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, model.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddTodoRef on AutoDisposeProviderRef<void> {
  /// The parameter `model` of this provider.
  TodoModel get model;
}

class _AddTodoProviderElement extends AutoDisposeProviderElement<void>
    with AddTodoRef {
  _AddTodoProviderElement(super.provider);

  @override
  TodoModel get model => (origin as AddTodoProvider).model;
}

String _$getTodoListHash() => r'7846fd608a8075219f117553d2f1c9721b6c31c4';

/// See also [getTodoList].
@ProviderFor(getTodoList)
final getTodoListProvider = AutoDisposeProvider<List<TodoModel>>.internal(
  getTodoList,
  name: r'getTodoListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getTodoListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetTodoListRef = AutoDisposeProviderRef<List<TodoModel>>;
String _$removeTodoHash() => r'aa8174df3abe9b34aa31224ec952d0425ec558c8';

/// See also [removeTodo].
@ProviderFor(removeTodo)
const removeTodoProvider = RemoveTodoFamily();

/// See also [removeTodo].
class RemoveTodoFamily extends Family<void> {
  /// See also [removeTodo].
  const RemoveTodoFamily();

  /// See also [removeTodo].
  RemoveTodoProvider call({
    required TodoModel model,
  }) {
    return RemoveTodoProvider(
      model: model,
    );
  }

  @override
  RemoveTodoProvider getProviderOverride(
    covariant RemoveTodoProvider provider,
  ) {
    return call(
      model: provider.model,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'removeTodoProvider';
}

/// See also [removeTodo].
class RemoveTodoProvider extends AutoDisposeProvider<void> {
  /// See also [removeTodo].
  RemoveTodoProvider({
    required TodoModel model,
  }) : this._internal(
          (ref) => removeTodo(
            ref as RemoveTodoRef,
            model: model,
          ),
          from: removeTodoProvider,
          name: r'removeTodoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$removeTodoHash,
          dependencies: RemoveTodoFamily._dependencies,
          allTransitiveDependencies:
              RemoveTodoFamily._allTransitiveDependencies,
          model: model,
        );

  RemoveTodoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.model,
  }) : super.internal();

  final TodoModel model;

  @override
  Override overrideWith(
    void Function(RemoveTodoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RemoveTodoProvider._internal(
        (ref) => create(ref as RemoveTodoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        model: model,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<void> createElement() {
    return _RemoveTodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RemoveTodoProvider && other.model == model;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, model.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RemoveTodoRef on AutoDisposeProviderRef<void> {
  /// The parameter `model` of this provider.
  TodoModel get model;
}

class _RemoveTodoProviderElement extends AutoDisposeProviderElement<void>
    with RemoveTodoRef {
  _RemoveTodoProviderElement(super.provider);

  @override
  TodoModel get model => (origin as RemoveTodoProvider).model;
}

String _$editTodoHash() => r'a4298f4c89d6f54c4b8b55775755c5988781a8ec';

/// See also [editTodo].
@ProviderFor(editTodo)
const editTodoProvider = EditTodoFamily();

/// See also [editTodo].
class EditTodoFamily extends Family<void> {
  /// See also [editTodo].
  const EditTodoFamily();

  /// See also [editTodo].
  EditTodoProvider call({
    required int index,
    required TodoModel model,
  }) {
    return EditTodoProvider(
      index: index,
      model: model,
    );
  }

  @override
  EditTodoProvider getProviderOverride(
    covariant EditTodoProvider provider,
  ) {
    return call(
      index: provider.index,
      model: provider.model,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'editTodoProvider';
}

/// See also [editTodo].
class EditTodoProvider extends AutoDisposeProvider<void> {
  /// See also [editTodo].
  EditTodoProvider({
    required int index,
    required TodoModel model,
  }) : this._internal(
          (ref) => editTodo(
            ref as EditTodoRef,
            index: index,
            model: model,
          ),
          from: editTodoProvider,
          name: r'editTodoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editTodoHash,
          dependencies: EditTodoFamily._dependencies,
          allTransitiveDependencies: EditTodoFamily._allTransitiveDependencies,
          index: index,
          model: model,
        );

  EditTodoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
    required this.model,
  }) : super.internal();

  final int index;
  final TodoModel model;

  @override
  Override overrideWith(
    void Function(EditTodoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EditTodoProvider._internal(
        (ref) => create(ref as EditTodoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
        model: model,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<void> createElement() {
    return _EditTodoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EditTodoProvider &&
        other.index == index &&
        other.model == model;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);
    hash = _SystemHash.combine(hash, model.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EditTodoRef on AutoDisposeProviderRef<void> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `model` of this provider.
  TodoModel get model;
}

class _EditTodoProviderElement extends AutoDisposeProviderElement<void>
    with EditTodoRef {
  _EditTodoProviderElement(super.provider);

  @override
  int get index => (origin as EditTodoProvider).index;
  @override
  TodoModel get model => (origin as EditTodoProvider).model;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
