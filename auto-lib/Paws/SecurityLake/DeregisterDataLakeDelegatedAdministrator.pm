
package Paws::SecurityLake::DeregisterDataLakeDelegatedAdministrator;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterDataLakeDelegatedAdministrator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datalake/delegate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::DeregisterDataLakeDelegatedAdministratorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::DeregisterDataLakeDelegatedAdministrator - Arguments for method DeregisterDataLakeDelegatedAdministrator on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterDataLakeDelegatedAdministrator on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method DeregisterDataLakeDelegatedAdministrator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterDataLakeDelegatedAdministrator.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $DeregisterDataLakeDelegatedAdministratorResponse =
      $securitylake->DeregisterDataLakeDelegatedAdministrator();

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/DeregisterDataLakeDelegatedAdministrator>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterDataLakeDelegatedAdministrator in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

