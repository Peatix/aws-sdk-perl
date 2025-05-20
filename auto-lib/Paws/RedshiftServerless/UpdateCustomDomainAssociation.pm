
package Paws::RedshiftServerless::UpdateCustomDomainAssociation;
  use Moose;
  has CustomDomainCertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainCertificateArn' , required => 1);
  has CustomDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainName' , required => 1);
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCustomDomainAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::UpdateCustomDomainAssociationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::UpdateCustomDomainAssociation - Arguments for method UpdateCustomDomainAssociation on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCustomDomainAssociation on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method UpdateCustomDomainAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCustomDomainAssociation.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $UpdateCustomDomainAssociationResponse =
      $redshift -serverless->UpdateCustomDomainAssociation(
      CustomDomainCertificateArn => 'MyCustomDomainCertificateArnString',
      CustomDomainName           => 'MyCustomDomainName',
      WorkgroupName              => 'MyWorkgroupName',

      );

    # Results:
    my $CustomDomainCertificateArn =
      $UpdateCustomDomainAssociationResponse->CustomDomainCertificateArn;
    my $CustomDomainCertificateExpiryTime =
      $UpdateCustomDomainAssociationResponse->CustomDomainCertificateExpiryTime;
    my $CustomDomainName =
      $UpdateCustomDomainAssociationResponse->CustomDomainName;
    my $WorkgroupName = $UpdateCustomDomainAssociationResponse->WorkgroupName;

# Returns a L<Paws::RedshiftServerless::UpdateCustomDomainAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/UpdateCustomDomainAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomDomainCertificateArn => Str

The custom domain nameE<rsquo>s certificate Amazon resource name (ARN).
This is optional.



=head2 B<REQUIRED> CustomDomainName => Str

The custom domain name associated with the workgroup.



=head2 B<REQUIRED> WorkgroupName => Str

The name of the workgroup associated with the database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCustomDomainAssociation in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

