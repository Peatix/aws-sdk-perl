
package Paws::AppSync::AssociateApi;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiId', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/domainnames/{domainName}/apiassociation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::AssociateApiResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::AssociateApi - Arguments for method AssociateApi on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateApi on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method AssociateApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateApi.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $AssociateApiResponse = $appsync->AssociateApi(
      ApiId      => 'MyString',
      DomainName => 'MyDomainName',

    );

    # Results:
    my $ApiAssociation = $AssociateApiResponse->ApiAssociation;

    # Returns a L<Paws::AppSync::AssociateApiResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/AssociateApi>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID. Private APIs can not be associated with custom domains.



=head2 B<REQUIRED> DomainName => Str

The domain name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateApi in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

