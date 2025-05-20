
package Paws::ApiGateway::DeleteDomainNameAccessAssociation;
  use Moose;
  has DomainNameAccessAssociationArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domain_name_access_association_arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomainNameAccessAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domainnameaccessassociations/{domain_name_access_association_arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DeleteDomainNameAccessAssociation - Arguments for method DeleteDomainNameAccessAssociation on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDomainNameAccessAssociation on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method DeleteDomainNameAccessAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDomainNameAccessAssociation.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    $apigateway->DeleteDomainNameAccessAssociation(
      DomainNameAccessAssociationArn => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteDomainNameAccessAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainNameAccessAssociationArn => Str

The ARN of the domain name access association resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDomainNameAccessAssociation in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

