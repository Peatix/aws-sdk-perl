
package Paws::QApps::GetQApp;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'appId', required => 1);
  has AppVersion => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'appVersion');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQApp');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps.get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::GetQAppOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::GetQApp - Arguments for method GetQApp on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQApp on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method GetQApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQApp.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $GetQAppOutput = $data . qapps->GetQApp(
      AppId      => 'MyUUID',
      InstanceId => 'MyInstanceId',
      AppVersion => 1,                # OPTIONAL
    );

    # Results:
    my $AppArn               = $GetQAppOutput->AppArn;
    my $AppDefinition        = $GetQAppOutput->AppDefinition;
    my $AppId                = $GetQAppOutput->AppId;
    my $AppVersion           = $GetQAppOutput->AppVersion;
    my $CreatedAt            = $GetQAppOutput->CreatedAt;
    my $CreatedBy            = $GetQAppOutput->CreatedBy;
    my $Description          = $GetQAppOutput->Description;
    my $InitialPrompt        = $GetQAppOutput->InitialPrompt;
    my $RequiredCapabilities = $GetQAppOutput->RequiredCapabilities;
    my $Status               = $GetQAppOutput->Status;
    my $Title                = $GetQAppOutput->Title;
    my $UpdatedAt            = $GetQAppOutput->UpdatedAt;
    my $UpdatedBy            = $GetQAppOutput->UpdatedBy;

    # Returns a L<Paws::QApps::GetQAppOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/GetQApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique identifier of the Q App to retrieve.



=head2 AppVersion => Int

The version of the Q App.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQApp in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

