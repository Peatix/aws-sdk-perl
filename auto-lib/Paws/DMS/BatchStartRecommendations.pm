
package Paws::DMS::BatchStartRecommendations;
  use Moose;
  has Data => (is => 'ro', isa => 'ArrayRef[Paws::DMS::StartRecommendationsRequestEntry]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchStartRecommendations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::BatchStartRecommendationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::BatchStartRecommendations - Arguments for method BatchStartRecommendations on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchStartRecommendations on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method BatchStartRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchStartRecommendations.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $BatchStartRecommendationsResponse = $dms->BatchStartRecommendations(
      Data => [
        {
          DatabaseId => 'MyString',
          Settings   => {
            InstanceSizingType => 'MyString',
            WorkloadType       => 'MyString',

          },

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ErrorEntries = $BatchStartRecommendationsResponse->ErrorEntries;

    # Returns a L<Paws::DMS::BatchStartRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/BatchStartRecommendations>

=head1 ATTRIBUTES


=head2 Data => ArrayRef[L<Paws::DMS::StartRecommendationsRequestEntry>]

Provides information about source databases to analyze. After this
analysis, Fleet Advisor recommends target engines for each source
database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchStartRecommendations in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

