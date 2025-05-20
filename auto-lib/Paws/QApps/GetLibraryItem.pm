
package Paws::QApps::GetLibraryItem;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'appId');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has LibraryItemId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'libraryItemId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLibraryItem');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/catalog.getItem');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::GetLibraryItemOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::GetLibraryItem - Arguments for method GetLibraryItem on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLibraryItem on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method GetLibraryItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLibraryItem.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $GetLibraryItemOutput = $data . qapps->GetLibraryItem(
      InstanceId    => 'MyInstanceId',
      LibraryItemId => 'MyUUID',
      AppId         => 'MyUUID',         # OPTIONAL
    );

    # Results:
    my $AppId         = $GetLibraryItemOutput->AppId;
    my $AppVersion    = $GetLibraryItemOutput->AppVersion;
    my $Categories    = $GetLibraryItemOutput->Categories;
    my $CreatedAt     = $GetLibraryItemOutput->CreatedAt;
    my $CreatedBy     = $GetLibraryItemOutput->CreatedBy;
    my $IsRatedByUser = $GetLibraryItemOutput->IsRatedByUser;
    my $IsVerified    = $GetLibraryItemOutput->IsVerified;
    my $LibraryItemId = $GetLibraryItemOutput->LibraryItemId;
    my $RatingCount   = $GetLibraryItemOutput->RatingCount;
    my $Status        = $GetLibraryItemOutput->Status;
    my $UpdatedAt     = $GetLibraryItemOutput->UpdatedAt;
    my $UpdatedBy     = $GetLibraryItemOutput->UpdatedBy;
    my $UserCount     = $GetLibraryItemOutput->UserCount;

    # Returns a L<Paws::QApps::GetLibraryItemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/GetLibraryItem>

=head1 ATTRIBUTES


=head2 AppId => Str

The unique identifier of the Amazon Q App associated with the library
item.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 B<REQUIRED> LibraryItemId => Str

The unique identifier of the library item to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLibraryItem in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

