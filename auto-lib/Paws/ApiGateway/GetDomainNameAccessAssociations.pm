
package Paws::ApiGateway::GetDomainNameAccessAssociations;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has Position => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'position');
  has ResourceOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceOwner');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDomainNameAccessAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domainnameaccessassociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::DomainNameAccessAssociations');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetDomainNameAccessAssociations - Arguments for method GetDomainNameAccessAssociations on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDomainNameAccessAssociations on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetDomainNameAccessAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDomainNameAccessAssociations.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $DomainNameAccessAssociations =
      $apigateway->GetDomainNameAccessAssociations(
      Limit         => 1,             # OPTIONAL
      Position      => 'MyString',    # OPTIONAL
      ResourceOwner => 'SELF',        # OPTIONAL
      );

    # Results:
    my $Items    = $DomainNameAccessAssociations->Items;
    my $Position = $DomainNameAccessAssociations->Position;

    # Returns a L<Paws::ApiGateway::DomainNameAccessAssociations> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetDomainNameAccessAssociations>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of returned results per page. The default value is
25 and the maximum value is 500.



=head2 Position => Str

The current pagination position in the paged result set.



=head2 ResourceOwner => Str

The owner of the domain name access association. Use C<SELF> to only
list the domain name access associations owned by your own account. Use
C<OTHER_ACCOUNTS> to list the domain name access associations with your
private custom domain names that are owned by other AWS accounts.

Valid values are: C<"SELF">, C<"OTHER_ACCOUNTS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDomainNameAccessAssociations in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

