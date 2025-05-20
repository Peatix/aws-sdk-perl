
package Paws::IVSRealTime::CreateStorageConfiguration;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has S3 => (is => 'ro', isa => 'Paws::IVSRealTime::S3StorageConfiguration', traits => ['NameInRequest'], request_name => 's3', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IVSRealTime::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorageConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateStorageConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::CreateStorageConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::CreateStorageConfiguration - Arguments for method CreateStorageConfiguration on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStorageConfiguration on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method CreateStorageConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStorageConfiguration.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $CreateStorageConfigurationResponse =
      $ivsrealtime->CreateStorageConfiguration(
      S3 => {
        BucketName => 'MyS3BucketName',    # min: 3, max: 63

      },
      Name => 'MyStorageConfigurationName',    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $StorageConfiguration =
      $CreateStorageConfigurationResponse->StorageConfiguration;

    # Returns a L<Paws::IVSRealTime::CreateStorageConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/CreateStorageConfiguration>

=head1 ATTRIBUTES


=head2 Name => Str

Storage configuration name. The value does not need to be unique.



=head2 B<REQUIRED> S3 => L<Paws::IVSRealTime::S3StorageConfiguration>

A complex type that contains a storage configuration for where recorded
video will be stored.



=head2 Tags => L<Paws::IVSRealTime::Tags>

Tags attached to the resource. Array of maps, each of the form
C<string:string (key:value)>. See Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging AWS Resources and Tag Editor> for details, including
restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no constraints on tags beyond what is
documented there.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStorageConfiguration in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

