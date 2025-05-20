
package Paws::PcaConnectorAd::DeleteTemplateGroupAccessControlEntry;
  use Moose;
  has GroupSecurityIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupSecurityIdentifier', required => 1);
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTemplateGroupAccessControlEntry');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::DeleteTemplateGroupAccessControlEntry - Arguments for method DeleteTemplateGroupAccessControlEntry on L<Paws::PcaConnectorAd>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTemplateGroupAccessControlEntry on the
L<PcaConnectorAd|Paws::PcaConnectorAd> service. Use the attributes of this class
as arguments to method DeleteTemplateGroupAccessControlEntry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTemplateGroupAccessControlEntry.

=head1 SYNOPSIS

    my $pca-connector-ad = Paws->service('PcaConnectorAd');
    $pca -connector-ad->DeleteTemplateGroupAccessControlEntry(
      GroupSecurityIdentifier => 'MyGroupSecurityIdentifier',
      TemplateArn             => 'MyTemplateArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad/DeleteTemplateGroupAccessControlEntry>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupSecurityIdentifier => Str

Security identifier (SID) of the group object from Active Directory.
The SID starts with "S-".



=head2 B<REQUIRED> TemplateArn => Str

The Amazon Resource Name (ARN) that was returned when you called
CreateTemplate
(https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTemplateGroupAccessControlEntry in L<Paws::PcaConnectorAd>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

