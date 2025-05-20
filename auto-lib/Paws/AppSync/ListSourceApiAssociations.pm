
package Paws::AppSync::ListSourceApiAssociations;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSourceApiAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/sourceApiAssociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::ListSourceApiAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListSourceApiAssociations - Arguments for method ListSourceApiAssociations on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSourceApiAssociations on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method ListSourceApiAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSourceApiAssociations.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $ListSourceApiAssociationsResponse = $appsync->ListSourceApiAssociations(
      ApiId      => 'MyString',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSourceApiAssociationsResponse->NextToken;
    my $SourceApiAssociationSummaries =
      $ListSourceApiAssociationsResponse->SourceApiAssociationSummaries;

    # Returns a L<Paws::AppSync::ListSourceApiAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/ListSourceApiAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 MaxResults => Int

The maximum number of results that you want the request to return.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which you can use to return the next set of items in the
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSourceApiAssociations in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

