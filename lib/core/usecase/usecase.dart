
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:nasa_clean_arch/core/errors/failures.dart';

///Classe abstrata utilizada para ser extendida para todos os usecases dentro da estrutura
///de features
abstract class Usecase<Output, Input>{
  Future<Either<Failure, Output>> call(Input params);
}

/// Classe utilizada para quando não ouver parâmetros de input para o método call
class NoParams extends Equatable{
  @override
  List<Object?> get props => [];
}