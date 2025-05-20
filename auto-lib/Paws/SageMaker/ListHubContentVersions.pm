
package Paws::SageMaker::ListHubContentVersions;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has HubContentName => (is => 'ro', isa => 'Str', required => 1);
  has HubContentType => (is => 'ro', isa => 'Str', required => 1);
  has HubName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has MaxSchemaVersion => (is => 'ro', isa => 'Str');
  has MinVersion => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHubContentVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListHubContentVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListHubContentVersions - Arguments for method ListHubContentVersions on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHubContentVersions on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListHubContentVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHubContentVersions.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListHubContentVersionsResponse =
      $api . sagemaker->ListHubContentVersions(
      HubContentName     => 'MyHubContentName',
      HubContentType     => 'Model',
      HubName            => 'MyHubNameOrArn',
      CreationTimeAfter  => '1970-01-01T01:00:00',        # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',        # OPTIONAL
      MaxResults         => 1,                            # OPTIONAL
      MaxSchemaVersion   => 'MyDocumentSchemaVersion',    # OPTIONAL
      MinVersion         => 'MyHubContentVersion',        # OPTIONAL
      NextToken          => 'MyNextToken',                # OPTIONAL
      SortBy             => 'HubContentName',             # OPTIONAL
      SortOrder          => 'Ascending',                  # OPTIONAL
      );

    # Results:
    my $HubContentSummaries =
      $ListHubContentVersionsResponse->HubContentSummaries;
    my $NextToken = $ListHubContentVersionsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListHubContentVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListHubContentVersions>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Only list hub content versions that were created after the time
specified.



=head2 CreationTimeBefore => Str

Only list hub content versions that were created before the time
specified.



=head2 B<REQUIRED> HubContentName => Str

The name of the hub content.



=head2 B<REQUIRED> HubContentType => Str

The type of hub content to list versions of.

Valid values are: C<"Model">, C<"Notebook">, C<"ModelReference">

=head2 B<REQUIRED> HubName => Str

The name of the hub to list the content versions of.



=head2 MaxResults => Int

The maximum number of hub content versions to list.



=head2 MaxSchemaVersion => Str

The upper bound of the hub content schema version.



=head2 MinVersion => Str

The lower bound of the hub content versions to list.



=head2 NextToken => Str

If the response to a previous C<ListHubContentVersions> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of hub content versions, use the token in the next request.



=head2 SortBy => Str

Sort hub content versions by either name or creation time.

Valid values are: C<"HubContentName">, C<"CreationTime">, C<"HubContentStatus">

=head2 SortOrder => Str

Sort hub content versions by ascending or descending order.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHubContentVersions in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

