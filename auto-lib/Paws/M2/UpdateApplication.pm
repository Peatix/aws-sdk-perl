
package Paws::M2::UpdateApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has CurrentApplicationVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'currentApplicationVersion', required => 1);
  has Definition => (is => 'ro', isa => 'Paws::M2::Definition', traits => ['NameInRequest'], request_name => 'definition');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::UpdateApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::UpdateApplication - Arguments for method UpdateApplication on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $UpdateApplicationResponse = $m2->UpdateApplication(
      ApplicationId             => 'MyIdentifier',
      CurrentApplicationVersion => 1,
      Definition                => {
        Content    => 'MyStringFree65000',    # min: 1, max: 65000; OPTIONAL
        S3Location => 'MyString2000',         # OPTIONAL
      },    # OPTIONAL
      Description => 'MyEntityDescription',    # OPTIONAL
    );

    # Results:
    my $ApplicationVersion = $UpdateApplicationResponse->ApplicationVersion;

    # Returns a L<Paws::M2::UpdateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/UpdateApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application you want to update.



=head2 B<REQUIRED> CurrentApplicationVersion => Int

The current version of the application to update.



=head2 Definition => L<Paws::M2::Definition>

The application definition for this application. You can specify either
inline JSON or an S3 bucket location.



=head2 Description => Str

The description of the application to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

