import 'package:clean_arch/core/error/failure.dart';
import 'package:clean_arch/movies/domain/entities/movie.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class BaseUseCase<T,Parameters>{
 Future<Either<Failure,T >> call(Parameters parameters);
}

class NoParameters extends Equatable{

   const NoParameters();

   @override
  List<Object> get props=> [];
}