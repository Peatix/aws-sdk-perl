
package Paws::LookoutEquipment::ListModelVersions;
  use Moose;
  has CreatedAtEndTime => (is => 'ro', isa => 'Str');
  has CreatedAtStartTime => (is => 'ro', isa => 'Str');
  has MaxModelVersion => (is => 'ro', isa => 'Int');
  has MaxResults => (is => 'ro', isa => 'Int');
  has MinModelVersion => (is => 'ro', isa => 'Int');
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListModelVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::ListModelVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListModelVersions - Arguments for method ListModelVersions on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListModelVersions on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method ListModelVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListModelVersions.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $ListModelVersionsResponse = $lookoutequipment->ListModelVersions(
      ModelName          => 'MyModelName',
      CreatedAtEndTime   => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedAtStartTime => '1970-01-01T01:00:00',    # OPTIONAL
      MaxModelVersion    => 1,                        # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      MinModelVersion    => 1,                        # OPTIONAL
      NextToken          => 'MyNextToken',            # OPTIONAL
      SourceType         => 'TRAINING',               # OPTIONAL
      Status             => 'IN_PROGRESS',            # OPTIONAL
    );

    # Results:
    my $ModelVersionSummaries =
      $ListModelVersionsResponse->ModelVersionSummaries;
    my $NextToken = $ListModelVersionsResponse->NextToken;

    # Returns a L<Paws::LookoutEquipment::ListModelVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/ListModelVersions>

=head1 ATTRIBUTES


=head2 CreatedAtEndTime => Str

Filter results to return all the model versions created before this
time.



=head2 CreatedAtStartTime => Str

Filter results to return all the model versions created after this
time.



=head2 MaxModelVersion => Int

Specifies the highest version of the model to return in the list.



=head2 MaxResults => Int

Specifies the maximum number of machine learning model versions to
list.



=head2 MinModelVersion => Int

Specifies the lowest version of the model to return in the list.



=head2 B<REQUIRED> ModelName => Str

Then name of the machine learning model for which the model versions
are to be listed.



=head2 NextToken => Str

If the total number of results exceeds the limit that the response can
display, the response returns an opaque pagination token indicating
where to continue the listing of machine learning model versions. Use
this token in the C<NextToken> field in the request to list the next
page of results.



=head2 SourceType => Str

Filter the results based on the way the model version was generated.

Valid values are: C<"TRAINING">, C<"RETRAINING">, C<"IMPORT">

=head2 Status => Str

Filter the results based on the current status of the model version.

Valid values are: C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">, C<"IMPORT_IN_PROGRESS">, C<"CANCELED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListModelVersions in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

