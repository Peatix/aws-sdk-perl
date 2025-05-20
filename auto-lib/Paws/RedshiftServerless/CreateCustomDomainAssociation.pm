
package Paws::RedshiftServerless::CreateCustomDomainAssociation;
  use Moose;
  has CustomDomainCertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainCertificateArn' , required => 1);
  has CustomDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainName' , required => 1);
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomDomainAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::CreateCustomDomainAssociationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::CreateCustomDomainAssociation - Arguments for method CreateCustomDomainAssociation on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomDomainAssociation on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method CreateCustomDomainAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomDomainAssociation.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $CreateCustomDomainAssociationResponse =
      $redshift -serverless->CreateCustomDomainAssociation(
      CustomDomainCertificateArn => 'MyCustomDomainCertificateArnString',
      CustomDomainName           => 'MyCustomDomainName',
      WorkgroupName              => 'MyWorkgroupName',

      );

    # Results:
    my $CustomDomainCertificateArn =
      $CreateCustomDomainAssociationResponse->CustomDomainCertificateArn;
    my $CustomDomainCertificateExpiryTime =
      $CreateCustomDomainAssociationResponse->CustomDomainCertificateExpiryTime;
    my $CustomDomainName =
      $CreateCustomDomainAssociationResponse->CustomDomainName;
    my $WorkgroupName = $CreateCustomDomainAssociationResponse->WorkgroupName;

# Returns a L<Paws::RedshiftServerless::CreateCustomDomainAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/CreateCustomDomainAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomDomainCertificateArn => Str

The custom domain nameE<rsquo>s certificate Amazon resource name (ARN).



=head2 B<REQUIRED> CustomDomainName => Str

The custom domain name to associate with the workgroup.



=head2 B<REQUIRED> WorkgroupName => Str

The name of the workgroup associated with the database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomDomainAssociation in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

