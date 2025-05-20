
package Paws::SecurityLake::DeleteDataLakeExceptionSubscription;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataLakeExceptionSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datalake/exceptions/subscription');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::DeleteDataLakeExceptionSubscriptionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::DeleteDataLakeExceptionSubscription - Arguments for method DeleteDataLakeExceptionSubscription on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataLakeExceptionSubscription on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method DeleteDataLakeExceptionSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataLakeExceptionSubscription.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $DeleteDataLakeExceptionSubscriptionResponse =
      $securitylake->DeleteDataLakeExceptionSubscription();

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/DeleteDataLakeExceptionSubscription>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataLakeExceptionSubscription in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

