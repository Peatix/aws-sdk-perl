
package Paws::SageMaker::ListModelCardVersions;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has ModelCardName => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardStatus => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListModelCardVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListModelCardVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListModelCardVersions - Arguments for method ListModelCardVersions on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListModelCardVersions on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListModelCardVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListModelCardVersions.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListModelCardVersionsResponse = $api . sagemaker->ListModelCardVersions(
      ModelCardName      => 'MyModelCardNameOrArn',
      CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      ModelCardStatus    => 'Draft',                  # OPTIONAL
      NextToken          => 'MyNextToken',            # OPTIONAL
      SortBy             => 'Version',                # OPTIONAL
      SortOrder          => 'Ascending',              # OPTIONAL
    );

    # Results:
    my $ModelCardVersionSummaryList =
      $ListModelCardVersionsResponse->ModelCardVersionSummaryList;
    my $NextToken = $ListModelCardVersionsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListModelCardVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListModelCardVersions>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Only list model card versions that were created after the time
specified.



=head2 CreationTimeBefore => Str

Only list model card versions that were created before the time
specified.



=head2 MaxResults => Int

The maximum number of model card versions to list.



=head2 B<REQUIRED> ModelCardName => Str

List model card versions for the model card with the specified name or
Amazon Resource Name (ARN).



=head2 ModelCardStatus => Str

Only list model card versions with the specified approval status.

Valid values are: C<"Draft">, C<"PendingReview">, C<"Approved">, C<"Archived">

=head2 NextToken => Str

If the response to a previous C<ListModelCardVersions> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of model card versions, use the token in the next request.



=head2 SortBy => Str

Sort listed model card versions by version. Sorts by version by
default.

Valid values are: C<"Version">

=head2 SortOrder => Str

Sort model card versions by ascending or descending order.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListModelCardVersions in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

