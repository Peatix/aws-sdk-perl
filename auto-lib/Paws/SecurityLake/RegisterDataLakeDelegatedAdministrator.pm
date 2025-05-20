
package Paws::SecurityLake::RegisterDataLakeDelegatedAdministrator;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterDataLakeDelegatedAdministrator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datalake/delegate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::RegisterDataLakeDelegatedAdministratorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::RegisterDataLakeDelegatedAdministrator - Arguments for method RegisterDataLakeDelegatedAdministrator on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterDataLakeDelegatedAdministrator on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method RegisterDataLakeDelegatedAdministrator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterDataLakeDelegatedAdministrator.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $RegisterDataLakeDelegatedAdministratorResponse =
      $securitylake->RegisterDataLakeDelegatedAdministrator(
      AccountId => 'MySafeString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/RegisterDataLakeDelegatedAdministrator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the Security Lake delegated
administrator.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterDataLakeDelegatedAdministrator in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

