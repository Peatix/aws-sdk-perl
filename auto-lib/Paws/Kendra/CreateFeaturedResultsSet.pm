
package Paws::Kendra::CreateFeaturedResultsSet;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FeaturedDocuments => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::FeaturedDocument]');
  has FeaturedResultsSetName => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has QueryTexts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFeaturedResultsSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::CreateFeaturedResultsSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateFeaturedResultsSet - Arguments for method CreateFeaturedResultsSet on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFeaturedResultsSet on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method CreateFeaturedResultsSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFeaturedResultsSet.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $CreateFeaturedResultsSetResponse = $kendra->CreateFeaturedResultsSet(
      FeaturedResultsSetName => 'MyFeaturedResultsSetName',
      IndexId                => 'MyIndexId',
      ClientToken            => 'MyClientTokenName',                  # OPTIONAL
      Description            => 'MyFeaturedResultsSetDescription',    # OPTIONAL
      FeaturedDocuments      => [
        {
          Id => 'MyDocumentId',    # min: 1, max: 2048; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      QueryTexts => [ 'MyQueryText', ... ],    # OPTIONAL
      Status     => 'ACTIVE',                  # OPTIONAL
      Tags       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $FeaturedResultsSet =
      $CreateFeaturedResultsSetResponse->FeaturedResultsSet;

    # Returns a L<Paws::Kendra::CreateFeaturedResultsSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/CreateFeaturedResultsSet>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that you provide to identify the request to create a set of
featured results. Multiple calls to the C<CreateFeaturedResultsSet> API
with the same client token will create only one featured results set.



=head2 Description => Str

A description for the set of featured results.



=head2 FeaturedDocuments => ArrayRef[L<Paws::Kendra::FeaturedDocument>]

A list of document IDs for the documents you want to feature at the top
of the search results page. For more information on the list of
documents, see FeaturedResultsSet
(https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html).



=head2 B<REQUIRED> FeaturedResultsSetName => Str

A name for the set of featured results.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index that you want to use for featuring results.



=head2 QueryTexts => ArrayRef[Str|Undef]

A list of queries for featuring results. For more information on the
list of queries, see FeaturedResultsSet
(https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html).



=head2 Status => Str

The current status of the set of featured results. When the value is
C<ACTIVE>, featured results are ready for use. You can still configure
your settings before setting the status to C<ACTIVE>. You can set the
status to C<ACTIVE> or C<INACTIVE> using the UpdateFeaturedResultsSet
(https://docs.aws.amazon.com/kendra/latest/dg/API_UpdateFeaturedResultsSet.html)
API. The queries you specify for featured results must be unique per
featured results set for each index, whether the status is C<ACTIVE> or
C<INACTIVE>.

Valid values are: C<"ACTIVE">, C<"INACTIVE">

=head2 Tags => ArrayRef[L<Paws::Kendra::Tag>]

A list of key-value pairs that identify or categorize the featured
results set. You can also use tags to help control access to the
featured results set. Tag keys and values can consist of Unicode
letters, digits, white space, and any of the following symbols:_ . : /
= + - @.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFeaturedResultsSet in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

