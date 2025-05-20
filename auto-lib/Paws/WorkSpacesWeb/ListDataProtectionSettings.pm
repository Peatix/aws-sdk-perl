
package Paws::WorkSpacesWeb::ListDataProtectionSettings;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataProtectionSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dataProtectionSettings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::ListDataProtectionSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::ListDataProtectionSettings - Arguments for method ListDataProtectionSettings on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataProtectionSettings on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method ListDataProtectionSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataProtectionSettings.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $ListDataProtectionSettingsResponse =
      $workspaces -web->ListDataProtectionSettings(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $DataProtectionSettings =
      $ListDataProtectionSettingsResponse->DataProtectionSettings;
    my $NextToken = $ListDataProtectionSettingsResponse->NextToken;

  # Returns a L<Paws::WorkSpacesWeb::ListDataProtectionSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/ListDataProtectionSettings>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be included in the next page.



=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataProtectionSettings in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

