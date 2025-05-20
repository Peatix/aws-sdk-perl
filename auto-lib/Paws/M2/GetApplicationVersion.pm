
package Paws::M2::GetApplicationVersion;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ApplicationVersion => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'applicationVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplicationVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/versions/{applicationVersion}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::GetApplicationVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetApplicationVersion - Arguments for method GetApplicationVersion on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplicationVersion on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method GetApplicationVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplicationVersion.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $GetApplicationVersionResponse = $m2->GetApplicationVersion(
      ApplicationId      => 'MyIdentifier',
      ApplicationVersion => 1,

    );

    # Results:
    my $ApplicationVersion = $GetApplicationVersionResponse->ApplicationVersion;
    my $CreationTime       = $GetApplicationVersionResponse->CreationTime;
    my $DefinitionContent  = $GetApplicationVersionResponse->DefinitionContent;
    my $Description        = $GetApplicationVersionResponse->Description;
    my $Name               = $GetApplicationVersionResponse->Name;
    my $Status             = $GetApplicationVersionResponse->Status;
    my $StatusReason       = $GetApplicationVersionResponse->StatusReason;

    # Returns a L<Paws::M2::GetApplicationVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/GetApplicationVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application.



=head2 B<REQUIRED> ApplicationVersion => Int

The specific version of the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplicationVersion in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

