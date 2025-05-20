
package Paws::PcaConnectorAd::UpdateTemplateGroupAccessControlEntry;
  use Moose;
  has AccessRights => (is => 'ro', isa => 'Paws::PcaConnectorAd::AccessRights');
  has GroupDisplayName => (is => 'ro', isa => 'Str');
  has GroupSecurityIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupSecurityIdentifier', required => 1);
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTemplateGroupAccessControlEntry');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::UpdateTemplateGroupAccessControlEntry - Arguments for method UpdateTemplateGroupAccessControlEntry on L<Paws::PcaConnectorAd>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTemplateGroupAccessControlEntry on the
L<PcaConnectorAd|Paws::PcaConnectorAd> service. Use the attributes of this class
as arguments to method UpdateTemplateGroupAccessControlEntry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTemplateGroupAccessControlEntry.

=head1 SYNOPSIS

    my $pca-connector-ad = Paws->service('PcaConnectorAd');
    $pca -connector-ad->UpdateTemplateGroupAccessControlEntry(
      GroupSecurityIdentifier => 'MyGroupSecurityIdentifier',
      TemplateArn             => 'MyTemplateArn',
      AccessRights            => {
        AutoEnroll => 'ALLOW',    # values: ALLOW, DENY; OPTIONAL
        Enroll     => 'ALLOW',    # values: ALLOW, DENY; OPTIONAL
      },    # OPTIONAL
      GroupDisplayName => 'MyDisplayName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pca-connector-ad/UpdateTemplateGroupAccessControlEntry>

=head1 ATTRIBUTES


=head2 AccessRights => L<Paws::PcaConnectorAd::AccessRights>

Allow or deny permissions for an Active Directory group to enroll or
autoenroll certificates for a template.



=head2 GroupDisplayName => Str

Name of the Active Directory group. This name does not need to match
the group name in Active Directory.



=head2 B<REQUIRED> GroupSecurityIdentifier => Str

Security identifier (SID) of the group object from Active Directory.
The SID starts with "S-".



=head2 B<REQUIRED> TemplateArn => Str

The Amazon Resource Name (ARN) that was returned when you called
CreateTemplate
(https://docs.aws.amazon.com/pca-connector-ad/latest/APIReference/API_CreateTemplate.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTemplateGroupAccessControlEntry in L<Paws::PcaConnectorAd>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

