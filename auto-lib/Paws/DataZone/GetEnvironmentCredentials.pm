
package Paws::DataZone::GetEnvironmentCredentials;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEnvironmentCredentials');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/credentials');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetEnvironmentCredentialsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetEnvironmentCredentials - Arguments for method GetEnvironmentCredentials on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEnvironmentCredentials on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetEnvironmentCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEnvironmentCredentials.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetEnvironmentCredentialsOutput = $datazone->GetEnvironmentCredentials(
      DomainIdentifier      => 'MyDomainId',
      EnvironmentIdentifier => 'MyEnvironmentId',

    );

    # Results:
    my $AccessKeyId     = $GetEnvironmentCredentialsOutput->AccessKeyId;
    my $Expiration      = $GetEnvironmentCredentialsOutput->Expiration;
    my $SecretAccessKey = $GetEnvironmentCredentialsOutput->SecretAccessKey;
    my $SessionToken    = $GetEnvironmentCredentialsOutput->SessionToken;

    # Returns a L<Paws::DataZone::GetEnvironmentCredentialsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetEnvironmentCredentials>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which this environment and its
credentials exist.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment whose credentials this operation gets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEnvironmentCredentials in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

