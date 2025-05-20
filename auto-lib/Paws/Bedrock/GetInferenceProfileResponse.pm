
package Paws::Bedrock::GetInferenceProfileResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InferenceProfileArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inferenceProfileArn', required => 1);
  has InferenceProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inferenceProfileId', required => 1);
  has InferenceProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inferenceProfileName', required => 1);
  has Models => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::InferenceProfileModel]', traits => ['NameInRequest'], request_name => 'models', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetInferenceProfileResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The time at which the inference profile was created.


=head2 Description => Str

The description of the inference profile.


=head2 B<REQUIRED> InferenceProfileArn => Str

The Amazon Resource Name (ARN) of the inference profile.


=head2 B<REQUIRED> InferenceProfileId => Str

The unique identifier of the inference profile.


=head2 B<REQUIRED> InferenceProfileName => Str

The name of the inference profile.


=head2 B<REQUIRED> Models => ArrayRef[L<Paws::Bedrock::InferenceProfileModel>]

A list of information about each model in the inference profile.


=head2 B<REQUIRED> Status => Str

The status of the inference profile. C<ACTIVE> means that the inference
profile is ready to be used.

Valid values are: C<"ACTIVE">
=head2 B<REQUIRED> Type => Str

The type of the inference profile. The following types are possible:

=over

=item *

C<SYSTEM_DEFINED> E<ndash> The inference profile is defined by Amazon
Bedrock. You can route inference requests across regions with these
inference profiles.

=item *

C<APPLICATION> E<ndash> The inference profile was created by a user.
This type of inference profile can track metrics and costs when
invoking the model in it. The inference profile may route requests to
one or multiple regions.

=back


Valid values are: C<"SYSTEM_DEFINED">, C<"APPLICATION">
=head2 UpdatedAt => Str

The time at which the inference profile was last updated.


=head2 _request_id => Str


=cut

