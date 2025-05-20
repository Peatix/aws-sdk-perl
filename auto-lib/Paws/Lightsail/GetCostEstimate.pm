
package Paws::Lightsail::GetCostEstimate;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' , required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName' , required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCostEstimate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetCostEstimateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetCostEstimate - Arguments for method GetCostEstimate on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCostEstimate on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetCostEstimate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCostEstimate.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetCostEstimateResult = $lightsail->GetCostEstimate(
      EndTime      => '1970-01-01T01:00:00',
      ResourceName => 'MyResourceName',
      StartTime    => '1970-01-01T01:00:00',

    );

    # Results:
    my $ResourcesBudgetEstimate =
      $GetCostEstimateResult->ResourcesBudgetEstimate;

    # Returns a L<Paws::Lightsail::GetCostEstimateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetCostEstimate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The cost estimate end time.

Constraints:

=over

=item *

Specified in Coordinated Universal Time (UTC).

=item *

Specified in the Unix time format.

For example, if you want to use an end time of October 1, 2018, at 9 PM
UTC, specify C<1538427600> as the end time.

=back

You can convert a human-friendly time to Unix time format using a
converter like Epoch converter (https://www.epochconverter.com/).



=head2 B<REQUIRED> ResourceName => Str

The resource name.



=head2 B<REQUIRED> StartTime => Str

The cost estimate start time.

Constraints:

=over

=item *

Specified in Coordinated Universal Time (UTC).

=item *

Specified in the Unix time format.

For example, if you want to use a start time of October 1, 2018, at 8
PM UTC, specify C<1538424000> as the start time.

=back

You can convert a human-friendly time to Unix time format using a
converter like Epoch converter (https://www.epochconverter.com/).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCostEstimate in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

