
package Paws::ControlTower::GetEnabledBaseline;
  use Moose;
  has EnabledBaselineIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'enabledBaselineIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEnabledBaseline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-enabled-baseline');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::GetEnabledBaselineOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::GetEnabledBaseline - Arguments for method GetEnabledBaseline on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEnabledBaseline on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method GetEnabledBaseline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEnabledBaseline.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $GetEnabledBaselineOutput = $controltower->GetEnabledBaseline(
      EnabledBaselineIdentifier => 'MyArn',

    );

    # Results:
    my $EnabledBaselineDetails =
      $GetEnabledBaselineOutput->EnabledBaselineDetails;

    # Returns a L<Paws::ControlTower::GetEnabledBaselineOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/GetEnabledBaseline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnabledBaselineIdentifier => Str

Identifier of the C<EnabledBaseline> resource to be retrieved, in ARN
format.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEnabledBaseline in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

