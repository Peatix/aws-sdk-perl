
package Paws::Deadline::CreateLimit;
  use Moose;
  has AmountRequirementName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'amountRequirementName', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has MaxCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxCount', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLimit');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/limits');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::CreateLimitResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateLimit - Arguments for method CreateLimit on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLimit on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method CreateLimit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLimit.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $CreateLimitResponse = $deadline->CreateLimit(
      AmountRequirementName => 'MyAmountRequirementName',
      DisplayName           => 'MyResourceName',
      FarmId                => 'MyFarmId',
      MaxCount              => 1,
      ClientToken           => 'MyClientToken',             # OPTIONAL
      Description           => 'MyDescription',             # OPTIONAL
    );

    # Results:
    my $LimitId = $CreateLimitResponse->LimitId;

    # Returns a L<Paws::Deadline::CreateLimitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/CreateLimit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AmountRequirementName => Str

The value that you specify as the C<name> in the C<amounts> field of
the C<hostRequirements> in a step of a job template to declare the
limit requirement.



=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 Description => Str

A description of the limit. A description helps you identify the
purpose of the limit.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> DisplayName => Str

The display name of the limit.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> FarmId => Str

The farm ID of the farm that contains the limit.



=head2 B<REQUIRED> MaxCount => Int

The maximum number of resources constrained by this limit. When all of
the resources are in use, steps that require the limit won't be
scheduled until the resource is available.

The C<maxCount> must not be 0. If the value is -1, there is no
restriction on the number of resources that can be acquired for this
limit.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLimit in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

