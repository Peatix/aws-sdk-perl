
package Paws::WorkSpacesWeb::DisassociateTrustStore;
  use Moose;
  has PortalArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'portalArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateTrustStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/portals/{portalArn+}/trustStores');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::DisassociateTrustStoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::DisassociateTrustStore - Arguments for method DisassociateTrustStore on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateTrustStore on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method DisassociateTrustStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateTrustStore.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $DisassociateTrustStoreResponse =
      $workspaces -web->DisassociateTrustStore(
      PortalArn => 'MyARN',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/DisassociateTrustStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PortalArn => Str

The ARN of the web portal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateTrustStore in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

