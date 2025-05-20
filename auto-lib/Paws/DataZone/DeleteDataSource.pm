
package Paws::DataZone::DeleteDataSource;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has RetainPermissionsOnRevokeFailure => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'retainPermissionsOnRevokeFailure');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/data-sources/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::DeleteDataSourceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::DeleteDataSource - Arguments for method DeleteDataSource on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataSource on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method DeleteDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataSource.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $DeleteDataSourceOutput = $datazone->DeleteDataSource(
      DomainIdentifier                 => 'MyDomainId',
      Identifier                       => 'MyDataSourceId',
      ClientToken                      => 'MyString',         # OPTIONAL
      RetainPermissionsOnRevokeFailure => 1,                  # OPTIONAL
    );

    # Results:
    my $AssetFormsOutput    = $DeleteDataSourceOutput->AssetFormsOutput;
    my $Configuration       = $DeleteDataSourceOutput->Configuration;
    my $ConnectionId        = $DeleteDataSourceOutput->ConnectionId;
    my $CreatedAt           = $DeleteDataSourceOutput->CreatedAt;
    my $Description         = $DeleteDataSourceOutput->Description;
    my $DomainId            = $DeleteDataSourceOutput->DomainId;
    my $EnableSetting       = $DeleteDataSourceOutput->EnableSetting;
    my $EnvironmentId       = $DeleteDataSourceOutput->EnvironmentId;
    my $ErrorMessage        = $DeleteDataSourceOutput->ErrorMessage;
    my $Id                  = $DeleteDataSourceOutput->Id;
    my $LastRunAt           = $DeleteDataSourceOutput->LastRunAt;
    my $LastRunErrorMessage = $DeleteDataSourceOutput->LastRunErrorMessage;
    my $LastRunStatus       = $DeleteDataSourceOutput->LastRunStatus;
    my $Name                = $DeleteDataSourceOutput->Name;
    my $ProjectId           = $DeleteDataSourceOutput->ProjectId;
    my $PublishOnImport     = $DeleteDataSourceOutput->PublishOnImport;
    my $RetainPermissionsOnRevokeFailure =
      $DeleteDataSourceOutput->RetainPermissionsOnRevokeFailure;
    my $Schedule        = $DeleteDataSourceOutput->Schedule;
    my $SelfGrantStatus = $DeleteDataSourceOutput->SelfGrantStatus;
    my $Status          = $DeleteDataSourceOutput->Status;
    my $Type            = $DeleteDataSourceOutput->Type;
    my $UpdatedAt       = $DeleteDataSourceOutput->UpdatedAt;

    # Returns a L<Paws::DataZone::DeleteDataSourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/DeleteDataSource>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which the data source is
deleted.



=head2 B<REQUIRED> Identifier => Str

The identifier of the data source that is deleted.



=head2 RetainPermissionsOnRevokeFailure => Bool

Specifies that the granted permissions are retained in case of a
self-subscribe functionality failure for a data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataSource in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

