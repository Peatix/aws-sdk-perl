
package Paws::Glue::CreateUsageProfile;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Glue::ProfileConfiguration', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUsageProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateUsageProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateUsageProfile - Arguments for method CreateUsageProfile on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUsageProfile on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateUsageProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUsageProfile.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateUsageProfileResponse = $glue->CreateUsageProfile(
      Configuration => {
        JobConfiguration => {
          'MyNameString' => {
            AllowedValues => [
              'MyConfigValueString', ...    # min: 1, max: 128
            ],    # OPTIONAL
            DefaultValue => 'MyConfigValueString',    # min: 1, max: 128
            MaxValue     => 'MyConfigValueString',    # min: 1, max: 128
            MinValue     => 'MyConfigValueString',    # min: 1, max: 128
          },    # key: min: 1, max: 255
        },    # OPTIONAL
        SessionConfiguration => {
          'MyNameString' => {
            AllowedValues => [
              'MyConfigValueString', ...    # min: 1, max: 128
            ],    # OPTIONAL
            DefaultValue => 'MyConfigValueString',    # min: 1, max: 128
            MaxValue     => 'MyConfigValueString',    # min: 1, max: 128
            MinValue     => 'MyConfigValueString',    # min: 1, max: 128
          },    # key: min: 1, max: 255
        },    # OPTIONAL
      },
      Name        => 'MyNameString',
      Description => 'MyDescriptionString',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Name = $CreateUsageProfileResponse->Name;

    # Returns a L<Paws::Glue::CreateUsageProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateUsageProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::Glue::ProfileConfiguration>

A C<ProfileConfiguration> object specifying the job and session values
for the profile.



=head2 Description => Str

A description of the usage profile.



=head2 B<REQUIRED> Name => Str

The name of the usage profile.



=head2 Tags => L<Paws::Glue::TagsMap>

A list of tags applied to the usage profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUsageProfile in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

