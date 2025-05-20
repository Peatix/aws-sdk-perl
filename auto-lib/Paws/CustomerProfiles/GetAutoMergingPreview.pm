
package Paws::CustomerProfiles::GetAutoMergingPreview;
  use Moose;
  has ConflictResolution => (is => 'ro', isa => 'Paws::CustomerProfiles::ConflictResolution', required => 1);
  has Consolidation => (is => 'ro', isa => 'Paws::CustomerProfiles::Consolidation', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has MinAllowedConfidenceScoreForMerging => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAutoMergingPreview');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/identity-resolution-jobs/auto-merging-preview');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::GetAutoMergingPreviewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetAutoMergingPreview - Arguments for method GetAutoMergingPreview on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAutoMergingPreview on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method GetAutoMergingPreview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAutoMergingPreview.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $GetAutoMergingPreviewResponse = $profile->GetAutoMergingPreview(
      ConflictResolution => {
        ConflictResolvingModel => 'RECENCY',        # values: RECENCY, SOURCE
        SourceName             => 'Mystring1To255', # min: 1, max: 255; OPTIONAL
      },
      Consolidation => {
        MatchingAttributesList => [
          [
            'Mystring1To255', ...    # min: 1, max: 255; OPTIONAL
          ],
          ...                        # min: 1, max: 20
        ],    # min: 1, max: 10

      },
      DomainName                          => 'Myname',
      MinAllowedConfidenceScoreForMerging => 1,          # OPTIONAL
    );

    # Results:
    my $DomainName = $GetAutoMergingPreviewResponse->DomainName;
    my $NumberOfMatchesInSample =
      $GetAutoMergingPreviewResponse->NumberOfMatchesInSample;
    my $NumberOfProfilesInSample =
      $GetAutoMergingPreviewResponse->NumberOfProfilesInSample;
    my $NumberOfProfilesWillBeMerged =
      $GetAutoMergingPreviewResponse->NumberOfProfilesWillBeMerged;

    # Returns a L<Paws::CustomerProfiles::GetAutoMergingPreviewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/GetAutoMergingPreview>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConflictResolution => L<Paws::CustomerProfiles::ConflictResolution>

How the auto-merging process should resolve conflicts between different
profiles.



=head2 B<REQUIRED> Consolidation => L<Paws::CustomerProfiles::Consolidation>

A list of matching attributes that represent matching criteria.



=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 MinAllowedConfidenceScoreForMerging => Num

Minimum confidence score required for profiles within a matching group
to be merged during the auto-merge process.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAutoMergingPreview in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

