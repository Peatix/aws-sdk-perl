
package Paws::Glue::UpdateUsageProfile;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Glue::ProfileConfiguration', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUsageProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateUsageProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateUsageProfile - Arguments for method UpdateUsageProfile on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUsageProfile on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateUsageProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUsageProfile.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateUsageProfileResponse = $glue->UpdateUsageProfile(
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
    );

    # Results:
    my $Name = $UpdateUsageProfileResponse->Name;

    # Returns a L<Paws::Glue::UpdateUsageProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateUsageProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::Glue::ProfileConfiguration>

A C<ProfileConfiguration> object specifying the job and session values
for the profile.



=head2 Description => Str

A description of the usage profile.



=head2 B<REQUIRED> Name => Str

The name of the usage profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUsageProfile in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

