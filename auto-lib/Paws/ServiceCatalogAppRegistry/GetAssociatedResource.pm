
package Paws::ServiceCatalogAppRegistry::GetAssociatedResource;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Resource => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource', required => 1);
  has ResourceTagStatus => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'resourceTagStatus');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssociatedResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{application}/resources/{resourceType}/{resource}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalogAppRegistry::GetAssociatedResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::GetAssociatedResource - Arguments for method GetAssociatedResource on L<Paws::ServiceCatalogAppRegistry>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssociatedResource on the
L<AWS Service Catalog App Registry|Paws::ServiceCatalogAppRegistry> service. Use the attributes of this class
as arguments to method GetAssociatedResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssociatedResource.

=head1 SYNOPSIS

    my $servicecatalog-appregistry = Paws->service('ServiceCatalogAppRegistry');
    my $GetAssociatedResourceResponse =
      $servicecatalog -appregistry->GetAssociatedResource(
      Application       => 'MyApplicationSpecifier',
      Resource          => 'MyResourceSpecifier',
      ResourceType      => 'CFN_STACK',
      MaxResults        => 1,                          # OPTIONAL
      NextToken         => 'MyNextToken',              # OPTIONAL
      ResourceTagStatus => [
        'SUCCESS', ...    # values: SUCCESS, FAILED, IN_PROGRESS, SKIPPED
      ],    # OPTIONAL
      );

    # Results:
    my $ApplicationTagResult =
      $GetAssociatedResourceResponse->ApplicationTagResult;
    my $Options  = $GetAssociatedResourceResponse->Options;
    my $Resource = $GetAssociatedResourceResponse->Resource;

# Returns a L<Paws::ServiceCatalogAppRegistry::GetAssociatedResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-appregistry/GetAssociatedResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The name, ID, or ARN of the application.



=head2 MaxResults => Int

The maximum number of results to return. If the parameter is omitted,
it defaults to 25. The value is optional.



=head2 NextToken => Str

A unique pagination token for each page of results. Make the call again
with the returned token to retrieve the next page of results.



=head2 B<REQUIRED> Resource => Str

The name or ID of the resource associated with the application.



=head2 ResourceTagStatus => ArrayRef[Str|Undef]

States whether an application tag is applied, not applied, in the
process of being applied, or skipped.



=head2 B<REQUIRED> ResourceType => Str

The type of resource associated with the application.

Valid values are: C<"CFN_STACK">, C<"RESOURCE_TAG_VALUE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssociatedResource in L<Paws::ServiceCatalogAppRegistry>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

