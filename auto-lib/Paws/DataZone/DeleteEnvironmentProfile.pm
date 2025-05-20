
package Paws::DataZone::DeleteEnvironmentProfile;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEnvironmentProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environment-profiles/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::DeleteEnvironmentProfile - Arguments for method DeleteEnvironmentProfile on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEnvironmentProfile on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method DeleteEnvironmentProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEnvironmentProfile.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    $datazone->DeleteEnvironmentProfile(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyEnvironmentProfileId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/DeleteEnvironmentProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which the environment profile
is deleted.



=head2 B<REQUIRED> Identifier => Str

The ID of the environment profile that is deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEnvironmentProfile in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

