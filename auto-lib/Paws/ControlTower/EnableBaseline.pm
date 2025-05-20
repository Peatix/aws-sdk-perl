
package Paws::ControlTower::EnableBaseline;
  use Moose;
  has BaselineIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baselineIdentifier', required => 1);
  has BaselineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baselineVersion', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::ControlTower::EnabledBaselineParameter]', traits => ['NameInRequest'], request_name => 'parameters');
  has Tags => (is => 'ro', isa => 'Paws::ControlTower::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TargetIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableBaseline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/enable-baseline');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlTower::EnableBaselineOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::EnableBaseline - Arguments for method EnableBaseline on L<Paws::ControlTower>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableBaseline on the
L<AWS Control Tower|Paws::ControlTower> service. Use the attributes of this class
as arguments to method EnableBaseline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableBaseline.

=head1 SYNOPSIS

    my $controltower = Paws->service('ControlTower');
    my $EnableBaselineOutput = $controltower->EnableBaseline(
      BaselineIdentifier => 'MyArn',
      BaselineVersion    => 'MyBaselineVersion',
      TargetIdentifier   => 'MyArn',
      Parameters         => [
        {
          Key   => 'MyString',
          Value => {

          },

        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn                 = $EnableBaselineOutput->Arn;
    my $OperationIdentifier = $EnableBaselineOutput->OperationIdentifier;

    # Returns a L<Paws::ControlTower::EnableBaselineOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower/EnableBaseline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaselineIdentifier => Str

The ARN of the baseline to be enabled.



=head2 B<REQUIRED> BaselineVersion => Str

The specific version to be enabled of the specified baseline.



=head2 Parameters => ArrayRef[L<Paws::ControlTower::EnabledBaselineParameter>]

A list of C<key-value> objects that specify enablement parameters,
where C<key> is a string and C<value> is a document of any type.



=head2 Tags => L<Paws::ControlTower::TagMap>

Tags associated with input to C<EnableBaseline>.



=head2 B<REQUIRED> TargetIdentifier => Str

The ARN of the target on which the baseline will be enabled. Only OUs
are supported as targets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableBaseline in L<Paws::ControlTower>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

