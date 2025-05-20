
package Paws::Finspace::GetKxConnectionString;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clusterName', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has UserArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'userArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKxConnectionString');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/connectionString');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::GetKxConnectionStringResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::GetKxConnectionString - Arguments for method GetKxConnectionString on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetKxConnectionString on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method GetKxConnectionString.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetKxConnectionString.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $GetKxConnectionStringResponse = $finspace->GetKxConnectionString(
      ClusterName   => 'MyKxClusterName',
      EnvironmentId => 'MyIdType',
      UserArn       => 'MyKxUserArn',

    );

    # Results:
    my $SignedConnectionString =
      $GetKxConnectionStringResponse->SignedConnectionString;

    # Returns a L<Paws::Finspace::GetKxConnectionStringResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/GetKxConnectionString>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

A name of the kdb cluster.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment.



=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) that identifies the user. For more
information about ARNs and how to use ARNs in policies, see IAM
Identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html)
in the I<IAM User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetKxConnectionString in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

