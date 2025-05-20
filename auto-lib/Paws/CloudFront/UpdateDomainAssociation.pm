
package Paws::CloudFront::UpdateDomainAssociation;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);
  has TargetResource => (is => 'ro', isa => 'Paws::CloudFront::DistributionResourceId', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/domain-association');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateDomainAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'UpdateDomainAssociationRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateDomainAssociation - Arguments for method UpdateDomainAssociation on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainAssociation2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateDomainAssociation2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainAssociation2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateDomainAssociationResult = $cloudfront->UpdateDomainAssociation(
      Domain         => 'Mystring',
      TargetResource => {
        DistributionId       => 'Mystring',
        DistributionTenantId => 'Mystring',
      },
      IfMatch => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $Domain     = $UpdateDomainAssociationResult->Domain;
    my $ETag       = $UpdateDomainAssociationResult->ETag;
    my $ResourceId = $UpdateDomainAssociationResult->ResourceId;

    # Returns a L<Paws::CloudFront::UpdateDomainAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateDomainAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The domain to update.



=head2 IfMatch => Str

The value of the C<ETag> identifier for the distribution or
distribution tenant that will be associated with the domain.



=head2 B<REQUIRED> TargetResource => L<Paws::CloudFront::DistributionResourceId>

The target distribution resource for the domain. You can specify either
C<DistributionId> or C<DistributionTenantId>, but not both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainAssociation2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

