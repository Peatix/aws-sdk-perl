
package Paws::Deadline::CreateFarm;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has Tags => (is => 'ro', isa => 'Paws::Deadline::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFarm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::CreateFarmResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateFarm - Arguments for method CreateFarm on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFarm on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method CreateFarm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFarm.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $CreateFarmResponse = $deadline->CreateFarm(
      DisplayName => 'MyResourceName',
      ClientToken => 'MyClientToken',                  # OPTIONAL
      Description => 'MyDescription',                  # OPTIONAL
      KmsKeyArn   => 'MyKmsKeyArn',                    # OPTIONAL
      Tags        => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $FarmId = $CreateFarmResponse->FarmId;

    # Returns a L<Paws::Deadline::CreateFarmResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/CreateFarm>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 Description => Str

The description of the farm.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> DisplayName => Str

The display name of the farm.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 KmsKeyArn => Str

The ARN of the KMS key to use on the farm.



=head2 Tags => L<Paws::Deadline::Tags>

The tags to add to your farm. Each tag consists of a tag key and a tag
value. Tag keys and values are both required, but tag values can be
empty strings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFarm in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

