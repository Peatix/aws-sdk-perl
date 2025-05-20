
package Paws::ControlTower::GetBaseline;
  use Moose;
  has BaselineIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baselineIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBaseline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-baseline');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::GetBaselineOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::GetBaseline - Arguments for method GetBaseline on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBaseline on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method GetBaseline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBaseline.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $GetBaselineOutput = $controltower->GetBaseline(
      BaselineIdentifier => 'MyBaselineArn',

    );

    # Results:
    my $Arn         = $GetBaselineOutput->Arn;
    my $Description = $GetBaselineOutput->Description;
    my $Name        = $GetBaselineOutput->Name;

    # Returns a L<Paws::ControlTower::GetBaselineOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/GetBaseline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaselineIdentifier => Str

The ARN of the C<Baseline> resource to be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBaseline in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

