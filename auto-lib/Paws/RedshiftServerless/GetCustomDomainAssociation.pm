
package Paws::RedshiftServerless::GetCustomDomainAssociation;
  use Moose;
  has CustomDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainName' , required => 1);
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCustomDomainAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::GetCustomDomainAssociationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetCustomDomainAssociation - Arguments for method GetCustomDomainAssociation on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCustomDomainAssociation on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method GetCustomDomainAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCustomDomainAssociation.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $GetCustomDomainAssociationResponse =
      $redshift -serverless->GetCustomDomainAssociation(
      CustomDomainName => 'MyCustomDomainName',
      WorkgroupName    => 'MyWorkgroupName',

      );

    # Results:
    my $CustomDomainCertificateArn =
      $GetCustomDomainAssociationResponse->CustomDomainCertificateArn;
    my $CustomDomainCertificateExpiryTime =
      $GetCustomDomainAssociationResponse->CustomDomainCertificateExpiryTime;
    my $CustomDomainName =
      $GetCustomDomainAssociationResponse->CustomDomainName;
    my $WorkgroupName = $GetCustomDomainAssociationResponse->WorkgroupName;

# Returns a L<Paws::RedshiftServerless::GetCustomDomainAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/GetCustomDomainAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomDomainName => Str

The custom domain name associated with the workgroup.



=head2 B<REQUIRED> WorkgroupName => Str

The name of the workgroup associated with the database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCustomDomainAssociation in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

