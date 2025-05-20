
package Paws::Kendra::DescribeFeaturedResultsSet;
  use Moose;
  has FeaturedResultsSetId => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFeaturedResultsSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::DescribeFeaturedResultsSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeFeaturedResultsSet - Arguments for method DescribeFeaturedResultsSet on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFeaturedResultsSet on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method DescribeFeaturedResultsSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFeaturedResultsSet.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $DescribeFeaturedResultsSetResponse =
      $kendra->DescribeFeaturedResultsSet(
      FeaturedResultsSetId => 'MyFeaturedResultsSetId',
      IndexId              => 'MyIndexId',

      );

    # Results:
    my $CreationTimestamp =
      $DescribeFeaturedResultsSetResponse->CreationTimestamp;
    my $Description = $DescribeFeaturedResultsSetResponse->Description;
    my $FeaturedDocumentsMissing =
      $DescribeFeaturedResultsSetResponse->FeaturedDocumentsMissing;
    my $FeaturedDocumentsWithMetadata =
      $DescribeFeaturedResultsSetResponse->FeaturedDocumentsWithMetadata;
    my $FeaturedResultsSetId =
      $DescribeFeaturedResultsSetResponse->FeaturedResultsSetId;
    my $FeaturedResultsSetName =
      $DescribeFeaturedResultsSetResponse->FeaturedResultsSetName;
    my $LastUpdatedTimestamp =
      $DescribeFeaturedResultsSetResponse->LastUpdatedTimestamp;
    my $QueryTexts = $DescribeFeaturedResultsSetResponse->QueryTexts;
    my $Status     = $DescribeFeaturedResultsSetResponse->Status;

    # Returns a L<Paws::Kendra::DescribeFeaturedResultsSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/DescribeFeaturedResultsSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FeaturedResultsSetId => Str

The identifier of the set of featured results that you want to get
information on.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index used for featuring results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFeaturedResultsSet in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

