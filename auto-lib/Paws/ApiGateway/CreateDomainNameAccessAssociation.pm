
package Paws::ApiGateway::CreateDomainNameAccessAssociation;
  use Moose;
  has AccessAssociationSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessAssociationSource', required => 1);
  has AccessAssociationSourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessAssociationSourceType', required => 1);
  has DomainNameArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainNameArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomainNameAccessAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domainnameaccessassociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::DomainNameAccessAssociation');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateDomainNameAccessAssociation - Arguments for method CreateDomainNameAccessAssociation on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomainNameAccessAssociation on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateDomainNameAccessAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomainNameAccessAssociation.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $DomainNameAccessAssociation =
      $apigateway->CreateDomainNameAccessAssociation(
      AccessAssociationSource     => 'MyString',
      AccessAssociationSourceType => 'VPCE',
      DomainNameArn               => 'MyString',
      Tags                        => { 'MyString' => 'MyString', },   # OPTIONAL
      );

    # Results:
    my $AccessAssociationSource =
      $DomainNameAccessAssociation->AccessAssociationSource;
    my $AccessAssociationSourceType =
      $DomainNameAccessAssociation->AccessAssociationSourceType;
    my $DomainNameAccessAssociationArn =
      $DomainNameAccessAssociation->DomainNameAccessAssociationArn;
    my $DomainNameArn = $DomainNameAccessAssociation->DomainNameArn;
    my $Tags          = $DomainNameAccessAssociation->Tags;

    # Returns a L<Paws::ApiGateway::DomainNameAccessAssociation> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateDomainNameAccessAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessAssociationSource => Str

The identifier of the domain name access association source. For a
VPCE, the value is the VPC endpoint ID.



=head2 B<REQUIRED> AccessAssociationSourceType => Str

The type of the domain name access association source.

Valid values are: C<"VPCE">

=head2 B<REQUIRED> DomainNameArn => Str

The ARN of the domain name.



=head2 Tags => L<Paws::ApiGateway::MapOfStringToString>

The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with C<aws:>. The tag value can be up to 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomainNameAccessAssociation in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

