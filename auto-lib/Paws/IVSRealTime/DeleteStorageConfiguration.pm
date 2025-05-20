
package Paws::IVSRealTime::DeleteStorageConfiguration;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStorageConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteStorageConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::DeleteStorageConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::DeleteStorageConfiguration - Arguments for method DeleteStorageConfiguration on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteStorageConfiguration on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method DeleteStorageConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteStorageConfiguration.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $DeleteStorageConfigurationResponse =
      $ivsrealtime->DeleteStorageConfiguration(
      Arn => 'MyStorageConfigurationArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/DeleteStorageConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

ARN of the storage configuration to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteStorageConfiguration in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

