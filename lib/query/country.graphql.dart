import 'package:gql/ast.dart';

class Query$getAllCountries {
  Query$getAllCountries({
    this.countries,
    this.$__typename = 'Query',
  });

  factory Query$getAllCountries.fromJson(Map<String, dynamic> json) {
    final l$countries = json['countries'];
    final l$$__typename = json['__typename'];
    return Query$getAllCountries(
      countries: (l$countries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getAllCountries$countries.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getAllCountries$countries?>? countries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countries = countries;
    _resultData['countries'] = l$countries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countries = countries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$countries == null ? null : Object.hashAll(l$countries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAllCountries) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$countries = countries;
    final lOther$countries = other.countries;
    if (l$countries != null && lOther$countries != null) {
      if (l$countries.length != lOther$countries.length) {
        return false;
      }
      for (int i = 0; i < l$countries.length; i++) {
        final l$countries$entry = l$countries[i];
        final lOther$countries$entry = lOther$countries[i];
        if (l$countries$entry != lOther$countries$entry) {
          return false;
        }
      }
    } else if (l$countries != lOther$countries) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getAllCountries on Query$getAllCountries {
  CopyWith$Query$getAllCountries<Query$getAllCountries> get copyWith =>
      CopyWith$Query$getAllCountries(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getAllCountries<TRes> {
  factory CopyWith$Query$getAllCountries(
    Query$getAllCountries instance,
    TRes Function(Query$getAllCountries) then,
  ) = _CopyWithImpl$Query$getAllCountries;

  factory CopyWith$Query$getAllCountries.stub(TRes res) =
      _CopyWithStubImpl$Query$getAllCountries;

  TRes call({
    List<Query$getAllCountries$countries?>? countries,
    String? $__typename,
  });
  TRes countries(
      Iterable<Query$getAllCountries$countries?>? Function(
              Iterable<
                  CopyWith$Query$getAllCountries$countries<
                      Query$getAllCountries$countries>?>?)
          _fn);
}

class _CopyWithImpl$Query$getAllCountries<TRes>
    implements CopyWith$Query$getAllCountries<TRes> {
  _CopyWithImpl$Query$getAllCountries(
    this._instance,
    this._then,
  );

  final Query$getAllCountries _instance;

  final TRes Function(Query$getAllCountries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAllCountries(
        countries: countries == _undefined
            ? _instance.countries
            : (countries as List<Query$getAllCountries$countries?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes countries(
          Iterable<Query$getAllCountries$countries?>? Function(
                  Iterable<
                      CopyWith$Query$getAllCountries$countries<
                          Query$getAllCountries$countries>?>?)
              _fn) =>
      call(
          countries: _fn(_instance.countries?.map((e) => e == null
              ? null
              : CopyWith$Query$getAllCountries$countries(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$getAllCountries<TRes>
    implements CopyWith$Query$getAllCountries<TRes> {
  _CopyWithStubImpl$Query$getAllCountries(this._res);

  TRes _res;

  call({
    List<Query$getAllCountries$countries?>? countries,
    String? $__typename,
  }) =>
      _res;

  countries(_fn) => _res;
}

const documentNodeQuerygetAllCountries = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getAllCountries'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'countries'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'capital'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$getAllCountries$countries {
  Query$getAllCountries$countries({
    this.name,
    this.capital,
    this.$__typename = 'Country',
  });

  factory Query$getAllCountries$countries.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$capital = json['capital'];
    final l$$__typename = json['__typename'];
    return Query$getAllCountries$countries(
      name: (l$name as String?),
      capital: (l$capital as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? capital;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$capital = capital;
    _resultData['capital'] = l$capital;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$capital = capital;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$capital,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getAllCountries$countries) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$capital = capital;
    final lOther$capital = other.capital;
    if (l$capital != lOther$capital) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getAllCountries$countries
    on Query$getAllCountries$countries {
  CopyWith$Query$getAllCountries$countries<Query$getAllCountries$countries>
      get copyWith => CopyWith$Query$getAllCountries$countries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getAllCountries$countries<TRes> {
  factory CopyWith$Query$getAllCountries$countries(
    Query$getAllCountries$countries instance,
    TRes Function(Query$getAllCountries$countries) then,
  ) = _CopyWithImpl$Query$getAllCountries$countries;

  factory CopyWith$Query$getAllCountries$countries.stub(TRes res) =
      _CopyWithStubImpl$Query$getAllCountries$countries;

  TRes call({
    String? name,
    String? capital,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getAllCountries$countries<TRes>
    implements CopyWith$Query$getAllCountries$countries<TRes> {
  _CopyWithImpl$Query$getAllCountries$countries(
    this._instance,
    this._then,
  );

  final Query$getAllCountries$countries _instance;

  final TRes Function(Query$getAllCountries$countries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? capital = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getAllCountries$countries(
        name: name == _undefined ? _instance.name : (name as String?),
        capital:
            capital == _undefined ? _instance.capital : (capital as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getAllCountries$countries<TRes>
    implements CopyWith$Query$getAllCountries$countries<TRes> {
  _CopyWithStubImpl$Query$getAllCountries$countries(this._res);

  TRes _res;

  call({
    String? name,
    String? capital,
    String? $__typename,
  }) =>
      _res;
}

class Query$getPSCountry {
  Query$getPSCountry({
    this.country,
    this.$__typename = 'Query',
  });

  factory Query$getPSCountry.fromJson(Map<String, dynamic> json) {
    final l$country = json['country'];
    final l$$__typename = json['__typename'];
    return Query$getPSCountry(
      country: l$country == null
          ? null
          : Query$getPSCountry$country.fromJson(
              (l$country as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getPSCountry$country? country;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$country = country;
    _resultData['country'] = l$country?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$country = country;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$country,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getPSCountry) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getPSCountry on Query$getPSCountry {
  CopyWith$Query$getPSCountry<Query$getPSCountry> get copyWith =>
      CopyWith$Query$getPSCountry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getPSCountry<TRes> {
  factory CopyWith$Query$getPSCountry(
    Query$getPSCountry instance,
    TRes Function(Query$getPSCountry) then,
  ) = _CopyWithImpl$Query$getPSCountry;

  factory CopyWith$Query$getPSCountry.stub(TRes res) =
      _CopyWithStubImpl$Query$getPSCountry;

  TRes call({
    Query$getPSCountry$country? country,
    String? $__typename,
  });
  CopyWith$Query$getPSCountry$country<TRes> get country;
}

class _CopyWithImpl$Query$getPSCountry<TRes>
    implements CopyWith$Query$getPSCountry<TRes> {
  _CopyWithImpl$Query$getPSCountry(
    this._instance,
    this._then,
  );

  final Query$getPSCountry _instance;

  final TRes Function(Query$getPSCountry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? country = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPSCountry(
        country: country == _undefined
            ? _instance.country
            : (country as Query$getPSCountry$country?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getPSCountry$country<TRes> get country {
    final local$country = _instance.country;
    return local$country == null
        ? CopyWith$Query$getPSCountry$country.stub(_then(_instance))
        : CopyWith$Query$getPSCountry$country(
            local$country, (e) => call(country: e));
  }
}

class _CopyWithStubImpl$Query$getPSCountry<TRes>
    implements CopyWith$Query$getPSCountry<TRes> {
  _CopyWithStubImpl$Query$getPSCountry(this._res);

  TRes _res;

  call({
    Query$getPSCountry$country? country,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getPSCountry$country<TRes> get country =>
      CopyWith$Query$getPSCountry$country.stub(_res);
}

const documentNodeQuerygetPSCountry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getPSCountry'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'country'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: StringValueNode(
              value: 'PS',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: NameNode(value: 'name'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$getPSCountry$country {
  Query$getPSCountry$country({
    this.name,
    this.$__typename = 'Country',
  });

  factory Query$getPSCountry$country.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getPSCountry$country(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getPSCountry$country) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getPSCountry$country
    on Query$getPSCountry$country {
  CopyWith$Query$getPSCountry$country<Query$getPSCountry$country>
      get copyWith => CopyWith$Query$getPSCountry$country(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getPSCountry$country<TRes> {
  factory CopyWith$Query$getPSCountry$country(
    Query$getPSCountry$country instance,
    TRes Function(Query$getPSCountry$country) then,
  ) = _CopyWithImpl$Query$getPSCountry$country;

  factory CopyWith$Query$getPSCountry$country.stub(TRes res) =
      _CopyWithStubImpl$Query$getPSCountry$country;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getPSCountry$country<TRes>
    implements CopyWith$Query$getPSCountry$country<TRes> {
  _CopyWithImpl$Query$getPSCountry$country(
    this._instance,
    this._then,
  );

  final Query$getPSCountry$country _instance;

  final TRes Function(Query$getPSCountry$country) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPSCountry$country(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getPSCountry$country<TRes>
    implements CopyWith$Query$getPSCountry$country<TRes> {
  _CopyWithStubImpl$Query$getPSCountry$country(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$getTNCountry {
  Query$getTNCountry({
    this.country,
    this.$__typename = 'Query',
  });

  factory Query$getTNCountry.fromJson(Map<String, dynamic> json) {
    final l$country = json['country'];
    final l$$__typename = json['__typename'];
    return Query$getTNCountry(
      country: l$country == null
          ? null
          : Query$getTNCountry$country.fromJson(
              (l$country as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getTNCountry$country? country;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$country = country;
    _resultData['country'] = l$country?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$country = country;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$country,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getTNCountry) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getTNCountry on Query$getTNCountry {
  CopyWith$Query$getTNCountry<Query$getTNCountry> get copyWith =>
      CopyWith$Query$getTNCountry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getTNCountry<TRes> {
  factory CopyWith$Query$getTNCountry(
    Query$getTNCountry instance,
    TRes Function(Query$getTNCountry) then,
  ) = _CopyWithImpl$Query$getTNCountry;

  factory CopyWith$Query$getTNCountry.stub(TRes res) =
      _CopyWithStubImpl$Query$getTNCountry;

  TRes call({
    Query$getTNCountry$country? country,
    String? $__typename,
  });
  CopyWith$Query$getTNCountry$country<TRes> get country;
}

class _CopyWithImpl$Query$getTNCountry<TRes>
    implements CopyWith$Query$getTNCountry<TRes> {
  _CopyWithImpl$Query$getTNCountry(
    this._instance,
    this._then,
  );

  final Query$getTNCountry _instance;

  final TRes Function(Query$getTNCountry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? country = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getTNCountry(
        country: country == _undefined
            ? _instance.country
            : (country as Query$getTNCountry$country?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getTNCountry$country<TRes> get country {
    final local$country = _instance.country;
    return local$country == null
        ? CopyWith$Query$getTNCountry$country.stub(_then(_instance))
        : CopyWith$Query$getTNCountry$country(
            local$country, (e) => call(country: e));
  }
}

class _CopyWithStubImpl$Query$getTNCountry<TRes>
    implements CopyWith$Query$getTNCountry<TRes> {
  _CopyWithStubImpl$Query$getTNCountry(this._res);

  TRes _res;

  call({
    Query$getTNCountry$country? country,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getTNCountry$country<TRes> get country =>
      CopyWith$Query$getTNCountry$country.stub(_res);
}

const documentNodeQuerygetTNCountry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getTNCountry'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'country'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: StringValueNode(
              value: 'TN',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: NameNode(value: 'name'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$getTNCountry$country {
  Query$getTNCountry$country({
    this.name,
    this.$__typename = 'Country',
  });

  factory Query$getTNCountry$country.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getTNCountry$country(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getTNCountry$country) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getTNCountry$country
    on Query$getTNCountry$country {
  CopyWith$Query$getTNCountry$country<Query$getTNCountry$country>
      get copyWith => CopyWith$Query$getTNCountry$country(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getTNCountry$country<TRes> {
  factory CopyWith$Query$getTNCountry$country(
    Query$getTNCountry$country instance,
    TRes Function(Query$getTNCountry$country) then,
  ) = _CopyWithImpl$Query$getTNCountry$country;

  factory CopyWith$Query$getTNCountry$country.stub(TRes res) =
      _CopyWithStubImpl$Query$getTNCountry$country;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getTNCountry$country<TRes>
    implements CopyWith$Query$getTNCountry$country<TRes> {
  _CopyWithImpl$Query$getTNCountry$country(
    this._instance,
    this._then,
  );

  final Query$getTNCountry$country _instance;

  final TRes Function(Query$getTNCountry$country) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getTNCountry$country(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getTNCountry$country<TRes>
    implements CopyWith$Query$getTNCountry$country<TRes> {
  _CopyWithStubImpl$Query$getTNCountry$country(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
