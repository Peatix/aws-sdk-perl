
package Paws::Kendra::UpdateFeaturedResultsSet;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has FeaturedDocuments => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::FeaturedDocument]');
  has FeaturedResultsSetId => (is => 'ro', isa => 'Str', required => 1);
  has FeaturedResultsSetName => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has QueryTexts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFeaturedResultsSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::UpdateFeaturedResultsSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::UpdateFeaturedResultsSet - Arguments for method UpdateFeaturedResultsSet on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFeaturedResultsSet on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method UpdateFeaturedResultsSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFeaturedResultsSet.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $UpdateFeaturedResultsSetResponse = $kendra->UpdateFeaturedResultsSet(
      FeaturedResultsSetId => 'MyFeaturedResultsSetId',
      IndexId              => 'MyIndexId',
      Description          => 'MyFeaturedResultsSetDescription',    # OPTIONAL
      FeaturedDocuments    => [
        {
          Id => 'MyDocumentId',    # min: 1, max: 2048; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      FeaturedResultsSetName => 'MyFeaturedResultsSetName',    # OPTIONAL
      QueryTexts             => [ 'MyQueryText', ... ],        # OPTIONAL
      Status                 => 'ACTIVE',                      # OPTIONAL
    );

    # Results:
    my $FeaturedResultsSet =
      $UpdateFeaturedResultsSetResponse->FeaturedResultsSet;

    # Returns a L<Paws::Kendra::UpdateFeaturedResultsSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/UpdateFeaturedResultsSet>

=head1 ATTRIBUTES


=head2 Description => Str

A new description for the set of featured results.



=head2 FeaturedDocuments => ArrayRef[L<Paws::Kendra::FeaturedDocument>]

A list of document IDs for the documents you want to feature at the top
of the search results page. For more information on the list of
featured documents, see FeaturedResultsSet
(https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html).



=head2 B<REQUIRED> FeaturedResultsSetId => Str

The identifier of the set of featured results that you want to update.



=head2 FeaturedResultsSetName => Str

A new name for the set of featured results.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index used for featuring results.



=head2 QueryTexts => ArrayRef[Str|Undef]

A list of queries for featuring results. For more information on the
list of queries, see FeaturedResultsSet
(https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html).



=head2 Status => Str

You can set the status to C<ACTIVE> or C<INACTIVE>. When the value is
C<ACTIVE>, featured results are ready for use. You can still configure
your settings before setting the status to C<ACTIVE>. The queries you
specify for featured results must be unique per featured results set
for each index, whether the status is C<ACTIVE> or C<INACTIVE>.

Valid values are: C<"ACTIVE">, C<"INACTIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFeaturedResultsSet in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

