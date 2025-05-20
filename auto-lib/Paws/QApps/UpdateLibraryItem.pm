
package Paws::QApps::UpdateLibraryItem;
  use Moose;
  has Categories => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'categories');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has LibraryItemId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'libraryItemId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLibraryItem');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/catalog.updateItem');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::UpdateLibraryItemOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::UpdateLibraryItem - Arguments for method UpdateLibraryItem on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLibraryItem on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method UpdateLibraryItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLibraryItem.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $UpdateLibraryItemOutput = $data . qapps->UpdateLibraryItem(
      InstanceId    => 'MyInstanceId',
      LibraryItemId => 'MyUUID',
      Categories    => [ 'MyUUID', ... ],    # OPTIONAL
      Status        => 'PUBLISHED',          # OPTIONAL
    );

    # Results:
    my $AppId         = $UpdateLibraryItemOutput->AppId;
    my $AppVersion    = $UpdateLibraryItemOutput->AppVersion;
    my $Categories    = $UpdateLibraryItemOutput->Categories;
    my $CreatedAt     = $UpdateLibraryItemOutput->CreatedAt;
    my $CreatedBy     = $UpdateLibraryItemOutput->CreatedBy;
    my $IsRatedByUser = $UpdateLibraryItemOutput->IsRatedByUser;
    my $IsVerified    = $UpdateLibraryItemOutput->IsVerified;
    my $LibraryItemId = $UpdateLibraryItemOutput->LibraryItemId;
    my $RatingCount   = $UpdateLibraryItemOutput->RatingCount;
    my $Status        = $UpdateLibraryItemOutput->Status;
    my $UpdatedAt     = $UpdateLibraryItemOutput->UpdatedAt;
    my $UpdatedBy     = $UpdateLibraryItemOutput->UpdatedBy;
    my $UserCount     = $UpdateLibraryItemOutput->UserCount;

    # Returns a L<Paws::QApps::UpdateLibraryItemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/UpdateLibraryItem>

=head1 ATTRIBUTES


=head2 Categories => ArrayRef[Str|Undef]

The new categories to associate with the library item.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 B<REQUIRED> LibraryItemId => Str

The unique identifier of the library item to update.



=head2 Status => Str

The new status to set for the library item, such as "Published" or
"Hidden".

Valid values are: C<"PUBLISHED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLibraryItem in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

