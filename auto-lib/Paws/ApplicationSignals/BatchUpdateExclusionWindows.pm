
package Paws::ApplicationSignals::BatchUpdateExclusionWindows;
  use Moose;
  has AddExclusionWindows => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationSignals::ExclusionWindow]');
  has RemoveExclusionWindows => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationSignals::ExclusionWindow]');
  has SloIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateExclusionWindows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/exclusion-windows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationSignals::BatchUpdateExclusionWindowsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::BatchUpdateExclusionWindows - Arguments for method BatchUpdateExclusionWindows on L<Paws::ApplicationSignals>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateExclusionWindows on the
L<Amazon CloudWatch Application Signals|Paws::ApplicationSignals> service. Use the attributes of this class
as arguments to method BatchUpdateExclusionWindows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateExclusionWindows.

=head1 SYNOPSIS

    my $application-signals = Paws->service('ApplicationSignals');
    my $BatchUpdateExclusionWindowsOutput =
      $application -signals->BatchUpdateExclusionWindows(
      SloIds              => [ 'MyString', ... ],
      AddExclusionWindows => [
        {
          Window => {
            Duration     => 1,           # min: 1
            DurationUnit => 'MINUTE',    # values: MINUTE, HOUR, DAY, MONTH

          },
          Reason         => 'MyExclusionReason',   # min: 1, max: 1024; OPTIONAL
          RecurrenceRule => {
            Expression => 'MyExpression',          # min: 1, max: 1024

          },    # OPTIONAL
          StartTime => '1970-01-01T01:00:00',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      RemoveExclusionWindows => [
        {
          Window => {
            Duration     => 1,           # min: 1
            DurationUnit => 'MINUTE',    # values: MINUTE, HOUR, DAY, MONTH

          },
          Reason         => 'MyExclusionReason',   # min: 1, max: 1024; OPTIONAL
          RecurrenceRule => {
            Expression => 'MyExpression',          # min: 1, max: 1024

          },    # OPTIONAL
          StartTime => '1970-01-01T01:00:00',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Errors = $BatchUpdateExclusionWindowsOutput->Errors;
    my $SloIds = $BatchUpdateExclusionWindowsOutput->SloIds;

# Returns a L<Paws::ApplicationSignals::BatchUpdateExclusionWindowsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-signals/BatchUpdateExclusionWindows>

=head1 ATTRIBUTES


=head2 AddExclusionWindows => ArrayRef[L<Paws::ApplicationSignals::ExclusionWindow>]

A list of exclusion windows to add to the specified SLOs. You can add
up to 10 exclusion windows per SLO.



=head2 RemoveExclusionWindows => ArrayRef[L<Paws::ApplicationSignals::ExclusionWindow>]

A list of exclusion windows to remove from the specified SLOs. The
window configuration must match an existing exclusion window.



=head2 B<REQUIRED> SloIds => ArrayRef[Str|Undef]

The list of SLO IDs to add or remove exclusion windows from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateExclusionWindows in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

