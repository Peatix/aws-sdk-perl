
package Paws::WorkSpaces::ModifyStreamingProperties;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has StreamingProperties => (is => 'ro', isa => 'Paws::WorkSpaces::StreamingProperties');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyStreamingProperties');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::ModifyStreamingPropertiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ModifyStreamingProperties - Arguments for method ModifyStreamingProperties on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyStreamingProperties on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ModifyStreamingProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyStreamingProperties.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ModifyStreamingPropertiesResult =
      $workspaces->ModifyStreamingProperties(
      ResourceId          => 'MyDirectoryId',
      StreamingProperties => {
        GlobalAccelerator => {
          Mode              => 'ENABLED_AUTO',  # values: ENABLED_AUTO, DISABLED
          PreferredProtocol => 'TCP',           # values: TCP, NONE; OPTIONAL
        },    # OPTIONAL
        StorageConnectors => [
          {
            ConnectorType => 'HOME_FOLDER',    # values: HOME_FOLDER
            Status        => 'ENABLED',        # values: ENABLED, DISABLED

          },
          ...
        ],    # min: 1; OPTIONAL
        StreamingExperiencePreferredProtocol =>
          'TCP',    # values: TCP, UDP; OPTIONAL
        UserSettings => [
          {
            Action => 'CLIPBOARD_COPY_FROM_LOCAL_DEVICE'
            , # values: CLIPBOARD_COPY_FROM_LOCAL_DEVICE, CLIPBOARD_COPY_TO_LOCAL_DEVICE, PRINTING_TO_LOCAL_DEVICE, SMART_CARD
            Permission    => 'ENABLED',    # values: ENABLED, DISABLED
            MaximumLength => 1,            # OPTIONAL
          },
          ...
        ],    # min: 1; OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ModifyStreamingProperties>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The identifier of the resource.



=head2 StreamingProperties => L<Paws::WorkSpaces::StreamingProperties>

The streaming properties to configure.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyStreamingProperties in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

